package com.cootek.smartinput5.order;

import android.content.Context;
import android.os.Looper;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import com.cootek.smartinput5.TouchPalIME;
import com.cootek.smartinput5.engine.CandidateItem;
import com.cootek.smartinput5.engine.Editor;
import com.cootek.smartinput5.engine.Engine;
import com.cootek.smartinput5.engine.ExplicitInfo;
import com.cootek.smartinput5.engine.Okinawa;
import com.cootek.smartinput5.func.z;
import java.nio.charset.Charset;
import java.security.MessageDigest;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.List;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.locks.ReentrantLock;

/**
 * One actual native order, restricted to an explicit normal PHONEPAD composition.
 * Native processing and mutations share a lock; callbacks never initiate a reorder.
 */
public final class WordOrderController {
    public static final int UP = 0;
    public static final int DOWN = 1;
    public static final int FIRST = 2;
    public static final int LAST = 3;

    private static final int MAX_CANDIDATES = 2048;
    private static final int MAX_KEY_LENGTH = WordOrderPolicy.MAX_WORD_CHARS;
    private static final long AUTO_BUDGET_NS = 25L * 1000L * 1000L;
    private static final long UI_BUDGET_NS = 250L * 1000L * 1000L;
    private static final Charset UTF8 = Charset.forName("UTF-8");
    private static final ReentrantLock LOCK = new ReentrantLock();
    private static final AtomicLong ARRIVALS = new AtomicLong();
    // Protected by LOCK. A controlled pass has no public process-entry increment.
    private static long generation;
    private static int depth;
    private static boolean applying;
    private static Okinawa lastMainCore;
    // A UI capture owns its explanation. Optional processing on another thread
    // must never replace the reason that the currently opened dialog displays.
    private static final ThreadLocal<String> CAPTURE_STATUS = new ThreadLocal<String>();
    // Only an explicit button action replaces this result. Automatic replay has
    // no outcome object and cannot overwrite the explanation for the user.
    private static final ThreadLocal<ActionOutcome> ACTION_STATUS =
            new ThreadLocal<ActionOutcome>();
    // Protected by LOCK; only true while capture() inspects native/editor state.
    private static boolean inspectingCapture;

    private WordOrderController() { }

    public static String actionStatusText() {
        ActionOutcome outcome = ACTION_STATUS.get();
        return outcome == null
                ? "118-A00 · Результат действия недоступен. Откройте слово ещё раз."
                : outcome.text();
    }

    /** True only after this explicit move's synchronous commit/readback succeeded. */
    public static boolean actionIntentSaved() {
        ActionOutcome outcome = ACTION_STATUS.get();
        return outcome != null && !outcome.deletion && outcome.intentSaved;
    }

    private static final class ActionOutcome {
        final boolean deletion;
        final boolean reset;
        String stage, explanation;
        String failureStage, failureExplanation;
        boolean mutationPossible, verified, restored, success, intentSaved;

        ActionOutcome(boolean deletion) { this(deletion, false); }

        ActionOutcome(boolean deletion, boolean reset) {
            this.deletion = deletion;
            this.reset = reset;
            at(reset ? "120-R00" : deletion ? "118-D00" : "118-M00",
                    "Не удалось завершить действие.");
        }

        void at(String code, String message) { stage = code; explanation = message; }

        boolean fail(String code, String message) {
            at(code, message);
            failed();
            return false;
        }

        void failed() {
            // A restoration failure must not hide the original failed stage.
            if (failureStage == null) {
                failureStage = stage;
                failureExplanation = explanation;
            }
        }

        String text() {
            if (success && reset)
                return "120-ROK · Ручной приоритет сброшен. Наберите слово заново.";
            if (success) return deletion ? "118-OK · Действие выполнено."
                    : "118-OK · Правило сохранено; порядок изменён.";
            String code = failureStage == null ? stage : failureStage;
            String message = failureExplanation == null ? explanation : failureExplanation;
            if (intentSaved)
                return code + (restored
                        ? " · Правило сохранено; прежний порядок восстановлен."
                        : " · Правило сохранено. Проверьте порядок при следующем вводе.");
            if (restored)
                return code + (verified
                        ? " · Сохранение не подтверждено; исходный порядок восстановлен."
                        : " · Изменение не подтверждено; исходный порядок восстановлен.");
            if (mutationPossible) {
                if (deletion)
                    return code + " · Результат удаления не подтверждён. Откройте слово ещё раз.";
                if (verified)
                    return code + " · Порядок изменён; сохранение и восстановление не подтверждены.";
                return code + " · Порядок мог измениться; результат не подтверждён.";
            }
            return code + " · " + message;
        }
    }

    public static String captureStatusText() {
        String status = CAPTURE_STATUS.get();
        return status == null ? "111-C00 · Откройте слово ещё раз." : status;
    }

    private static void captureReason(String code, String explanation) {
        if (inspectingCapture) CAPTURE_STATUS.set(code + " · " + explanation);
    }

    private static void captureReasonIfUnset(String code, String explanation) {
        if (captureStatusText().startsWith("111-C00")) captureReason(code, explanation);
    }

    public static final class Snapshot {
        public final String word;
        public final int position;
        public final int total;
        public final boolean canDelete;
        private final long generation;
        private final long arrival;
        private final int index;
        private final byte[] fingerprint;
        private final EditingContext context;
        private final int[] cohortSlots;

        private Snapshot(String word, int index, NativeList list, EditingContext context,
                long generation, long arrival, boolean canDelete) {
            this.word = word;
            this.position = index + 1;
            this.total = list.keys.length;
            this.canDelete = canDelete;
            this.index = index;
            this.fingerprint = list.fingerprint.clone();
            this.context = context;
            this.cohortSlots = WordOrderPolicy.cohortSlots(list.keys, index,
                    context.typed, context.alphabet);
            this.generation = generation;
            this.arrival = arrival;
        }
    }

    /** A preference action has no ordinal, native pointer or editor-composition proof. */
    public static final class ResetSnapshot {
        public final String word;
        public final boolean hasPriority;
        private final Engine engine;
        private final Context application;
        private final String language;
        private final boolean caseAlternatives;
        private boolean consumed; // Protected by LOCK.

        private ResetSnapshot(String word, Engine engine, Context application,
                String language, boolean caseAlternatives, boolean hasPriority) {
            this.word = word;
            this.engine = engine;
            this.application = application;
            this.language = language;
            this.caseAlternatives = caseAlternatives;
            this.hasPriority = hasPriority;
        }
    }

    /** Read immutable word/source before ordinary capture can touch pooled candidates. */
    public static ResetSnapshot captureReset(String word, int source) {
        if (source != CandidateItem.SOURCE_DICTIONARY && source != CandidateItem.SOURCE_USERWORD)
            return null;
        if (word == null || word.length() == 0 || word.length() > WordOrderStore.MAX_WORD_CHARS
                || !onMainThread() || !LOCK.tryLock()) return null;
        try {
            if (depth != 0 || applying || !Engine.isInitialized()) return null;
            Engine engine = Engine.getInstance();
            if (engine == null || !engine.isNormalModeKeyboard()) return null;
            TouchPalIME ime = engine.getIms();
            if (ime == null) return null;
            Context application = ime.getApplicationContext();
            if (application == null) application = ime;
            String language = engine.getCurrentLanguageId();
            if (language == null || language.length() == 0
                    || language.length() > WordOrderStore.MAX_LANGUAGE_CHARS) return null;
            // Most menus have no own command for this word. Avoid enumerating
            // candidates unless a possible exact or case-related target exists.
            boolean possible = WordOrderStore.hasWordPriority(application, language, word, true);
            boolean aliases = possible && resetCaseAlternatives(engine, language, word);
            boolean present = possible
                    && WordOrderStore.hasWordPriority(application, language, word, aliases);
            if (!resetContextCurrent(engine, language)
                    || resetApplication(engine) != application) return null;
            return new ResetSnapshot(word, engine, application, language, aliases, present);
        } catch (Throwable unavailable) {
            return null;
        } finally {
            LOCK.unlock();
        }
    }

    public static boolean canReset(ResetSnapshot snapshot) {
        if (!onMainThread() || !LOCK.tryLock()) return false;
        try {
            return resetSnapshotCurrent(snapshot);
        } catch (Throwable unavailable) {
            return false;
        } finally {
            LOCK.unlock();
        }
    }

    /** Confirmed preferences only; no native reorder, default, delete or learned-score reset. */
    public static boolean reset(ResetSnapshot snapshot) {
        ActionOutcome outcome = new ActionOutcome(false, true);
        ACTION_STATUS.set(outcome);
        if (!onMainThread())
            return outcome.fail("120-R01", "Откройте слово с панели клавиатуры.");
        if (!LOCK.tryLock())
            return outcome.fail("120-R02", "Клавиатура занята. Откройте слово ещё раз.");
        try {
            outcome.at("120-R03", "Язык или слово изменились. Откройте меню заново.");
            if (!resetSnapshotCurrent(snapshot)) return outcome.fail(outcome.stage, outcome.explanation);
            // A formerly unique spelling must not authorize clearing another case
            // variant that appeared while this menu was open. Exact-only resets
            // do not depend on a native candidate list or composition type.
            outcome.at("120-R04", "Варианты слова изменились. Откройте меню заново.");
            if (snapshot.caseAlternatives
                    && !resetCaseAlternatives(snapshot.engine, snapshot.language, snapshot.word))
                return outcome.fail(outcome.stage, outcome.explanation);
            if (!resetSnapshotCurrent(snapshot))
                return outcome.fail("120-R03", "Язык или слово изменились. Откройте меню заново.");
            outcome.at("120-R05", "Не удалось подтвердить сброс приоритета.");
            boolean saved;
            applying = true;
            try {
                // A synchronous preference callback still runs the OEM pass,
                // but optional autoApply must not replay an unconfirmed reset.
                saved = WordOrderStore.resetPriority(snapshot.application, snapshot.language,
                        snapshot.word, snapshot.caseAlternatives);
            } finally {
                applying = false;
            }
            if (!saved) return outcome.fail(outcome.stage, outcome.explanation);
            snapshot.consumed = true;
            generation++; // Also invalidates an old movement snapshot from this menu.
            outcome.success = true;
            return true;
        } catch (Throwable unavailable) {
            outcome.failed();
            return false;
        } finally {
            LOCK.unlock();
        }
    }

    private static boolean resetSnapshotCurrent(ResetSnapshot snapshot) {
        return snapshot != null && snapshot.hasPriority && !snapshot.consumed
                && depth == 0 && !applying
                && resetContextCurrent(snapshot.engine, snapshot.language)
                && resetApplication(snapshot.engine) == snapshot.application;
    }

    private static Context resetApplication(Engine engine) {
        TouchPalIME ime = engine.getIms();
        if (ime == null) return null;
        Context application = ime.getApplicationContext();
        return application == null ? ime : application;
    }

    private static boolean resetContextCurrent(Engine engine, String language) {
        return Engine.isInitialized() && Engine.getInstance() == engine
                && engine.isNormalModeKeyboard() && language.equals(engine.getCurrentLanguageId());
    }

    /**
     * Public read-only candidate inspection, independent of inline USER parts,
     * candidate default and native bridge capability. Failure means exact-only.
     */
    private static boolean resetCaseAlternatives(Engine engine, String language, String word) {
        try {
            if (!resetContextCurrent(engine, language) || !z.J0()) return false;
            z manager = z.b0();
            Okinawa core = manager == null ? null : manager.m0();
            if (core == null) return false;
            long arrival = ARRIVALS.get();
            long epoch = generation;
            long limit = deadline(UI_BUDGET_NS);
            boolean found = false;
            String folded = WordOrderPolicy.foldKey(word);
            HashSet<String> seen = new HashSet<String>();
            for (int index = 0; index <= MAX_CANDIDATES; index++) {
                if (expired(limit)) return false;
                CandidateItem item = core.getCandidateItem(index, new CandidateItem());
                if (item == null)
                    return found && !expired(limit)
                            && ARRIVALS.get() == arrival && generation == epoch
                            && resetContextCurrent(engine, language) && z.J0()
                            && z.b0() == manager && manager.m0() == core;
                String key = item.getDisplayString();
                if (index == MAX_CANDIDATES || item.index != index || key == null
                        || key.length() == 0 || key.length() > MAX_KEY_LENGTH || !seen.add(key))
                    return false;
                if (word.equals(key)) found = true;
                else if (folded.equals(WordOrderPolicy.foldKey(key))) return false;
            }
        } catch (Throwable unavailable) {
            // Never guess an alias family when native reading is unavailable.
        }
        return false;
    }

    /** The sole replacement for Okinawa.doProcessEvent; the vendor body runs once. */
    public static void process(Okinawa core) {
        if (core == null) return;
        long arrival = ARRIVALS.incrementAndGet();
        LOCK.lock();
        try {
            depth++;
            try {
                core.doProcessEventOriginal();
            } finally {
                depth--;
                generation++;
            }
            if (!onMainThread() || depth != 0 || applying) return;
            lastMainCore = core;
            if (ARRIVALS.get() != arrival) return;
            try {
                autoApply(core, arrival);
            } catch (Throwable featureUnavailable) {
                // Failure of this optional layer must not replay the vendor event.
            }
        } finally {
            LOCK.unlock();
        }
    }

    public static Snapshot capture(CandidateItem selected) {
        CAPTURE_STATUS.set("111-C00 · Проверяется текущее слово.");
        if (selected == null) {
            CAPTURE_STATUS.set("111-C01 · Выберите вариант слова заново.");
            return null;
        }
        if (!onMainThread()) {
            CAPTURE_STATUS.set("111-C02 · Откройте слово с панели клавиатуры.");
            return null;
        }
        if (!LOCK.tryLock()) {
            CAPTURE_STATUS.set("111-C03 · Клавиатура занята. Откройте слово ещё раз.");
            return null;
        }
        try {
            inspectingCapture = true;
            if (depth != 0) {
                captureReason("111-C04", "Дождитесь завершения ввода и повторите нажатие.");
                return null;
            }
            if (applying) {
                captureReason("111-C05", "Предыдущее действие ещё выполняется.");
                return null;
            }
            if (lastMainCore == null) {
                captureReason("111-C06", "Введите новое слово на T9 и откройте его меню.");
                return null;
            }
            long arrival = ARRIVALS.get();
            EditingContext context = readContext(lastMainCore);
            if (context == null) {
                captureReasonIfUnset("111-C07", "Нет доступного ввода T9. Повторите набор.");
                return null;
            }
            NativeList list = enumerate(lastMainCore, deadline(UI_BUDGET_NS));
            if (list == null || list.keys.length == 0) {
                captureReasonIfUnset("111-C08", "Список слов недоступен. Повторите набор.");
                return null;
            }
            int index = selected.index;
            if (index < 0 || index >= list.keys.length
                    || !list.keys[index].equals(selected.getDisplayString())) {
                captureReason("111-C09", "Вариант слова уже изменился. Откройте его заново.");
                return null;
            }
            if (!stillEditing(context, arrival)) {
                captureReasonIfUnset("111-C10", "Ввод изменился. Откройте слово заново.");
                return null;
            }
            int bridgeStatus = NativeOrderBridge.capability(context.application);
            if (bridgeStatus != 0) {
                captureReason("111-B" + bridgeStatus,
                        "Перемещение недоступно. Перезапустите клавиатуру.");
                return null;
            }
            if (!stillEditing(context, arrival)) {
                captureReasonIfUnset("111-C11", "Ввод изменился. Откройте слово заново.");
                return null;
            }
            captureReason("123-OK", "Порядок слов одной комбинации T9.");
            return new Snapshot(list.keys[index], index, list, context, generation, arrival,
                    list.items[index].canDeleteWord());
        } catch (Throwable featureUnavailable) {
            if (featureUnavailable instanceof LinkageError)
                captureReason("111-X01", "Обновите и перезапустите клавиатуру.");
            else if (featureUnavailable instanceof SecurityException)
                captureReason("111-X02", "Доступ к движку ограничен. Перезапустите клавиатуру.");
            else
                captureReason("111-X03", "Не удалось прочитать варианты. Откройте слово ещё раз.");
            return null;
        } finally {
            inspectingCapture = false;
            LOCK.unlock();
        }
    }

    /** The requested visible 1-based destination; this is never a priority byte. */
    public static int target(Snapshot snapshot, int action) {
        if (snapshot == null || action < UP || action > LAST) return -1;
        if (!onMainThread() || !LOCK.tryLock()) return -1;
        try {
            if (!snapshotCurrent(snapshot)) return -1;
            return requestedTarget(snapshot, action);
        } catch (Throwable featureUnavailable) {
            return -1;
        } finally {
            LOCK.unlock();
        }
    }

    public static boolean canMove(Snapshot snapshot, int action) {
        return target(snapshot, action) > 0;
    }

    public static boolean move(Snapshot snapshot, int action) {
        ActionOutcome outcome = new ActionOutcome(false);
        ACTION_STATUS.set(outcome);
        if (!onMainThread())
            return outcome.fail("118-M01", "Откройте слово с панели клавиатуры.");
        if (!LOCK.tryLock())
            return outcome.fail("118-M02", "Клавиатура занята. Откройте слово ещё раз.");
        try {
            outcome.at("118-M03", "Ввод изменился. Откройте слово ещё раз.");
            if (!snapshotCurrent(snapshot)) return outcome.fail(outcome.stage, outcome.explanation);
            int destination = requestedTarget(snapshot, action);
            if (destination < 0)
                return outcome.fail("118-M04", "Это перемещение недоступно для текущей позиции.");
            Okinawa core = lastMainCore;
            outcome.at("118-M05", "Не удалось проверить список кандидатов. Откройте слово ещё раз.");
            NativeList before = enumerate(core, deadline(UI_BUDGET_NS));
            if (!matches(snapshot, before) || !snapshotCurrent(snapshot))
                return outcome.fail(outcome.stage, outcome.explanation);
            outcome.at("118-M06", "Не удалось подготовить перемещение.");
            WordOrderPolicy.Rule rule = WordOrderPolicy.makeCohortMove(before.keys, snapshot.index,
                    action, snapshot.context.typed, snapshot.context.alphabet);
            if (rule == null) return outcome.fail(outcome.stage, outcome.explanation);
            if (!WordOrderPolicy.fullyTyped(rule.word, snapshot.context.typed)
                    || rule.anchor != null
                    && !WordOrderPolicy.fullyTyped(rule.anchor, snapshot.context.typed))
                return outcome.fail("121-P03", "Допишите слово: приоритет меняется для полностью набранных слов.");
            int[] requested = WordOrderPolicy.orderCohorts(before.keys,
                    Collections.singletonList(rule), snapshot.context.typed,
                    snapshot.context.alphabet, snapshot.word);
            outcome.at("118-M07", "Не удалось прочитать сохранённые правила приоритета.");
            List<WordOrderPolicy.Rule> previous = WordOrderStore.read(snapshot.context.application,
                    snapshot.context.language);
            if (previous == null) return outcome.fail(outcome.stage, outcome.explanation);
            // Validate the complete log with the SAME scoped projector used for
            // automatic replay. This explicit action focuses only its own cohort;
            // another cohort's rules may later canonicalize its own fixed native
            // slots, but cannot alter this cohort's advertised global destinations.
            outcome.at("118-P01", "Не удалось проверить полный порядок или лимит правил.");
            List<WordOrderPolicy.Rule> proposed =
                    WordOrderPolicy.reconcileCohortMove(before.keys, previous, rule, requested,
                            snapshot.context.typed, snapshot.context.alphabet);
            int[] permutation = WordOrderPolicy.orderCohorts(before.keys, proposed,
                    snapshot.context.typed, snapshot.context.alphabet, snapshot.word);
            if (!validPermutation(permutation, before.keys.length))
                return outcome.fail(outcome.stage, outcome.explanation);
            if (!Arrays.equals(requested, permutation)
                    || permutation[destination - 1] != snapshot.index)
                return outcome.fail("118-P02", "Сохранённые правила конфликтуют с этим перемещением.");
            // The command is durable independently of whether this ephemeral
            // composition survives the owned set-default/process pass below.
            outcome.at("118-M08", "Ввод изменился перед сохранением. Откройте слово ещё раз.");
            if (!snapshotCurrent(snapshot)) return outcome.fail(outcome.stage, outcome.explanation);
            boolean stored = false;
            outcome.at("118-S01", "Не удалось подтвердить сохранение приоритета.");
            applying = true;
            try {
                // A synchronous preferences listener may reenter process(). Its
                // vendor pass still runs once, but optional autoApply must not
                // replay an intent before commit/readback has been confirmed.
                stored = WordOrderStore.replaceIfUnchanged(snapshot.context.application,
                        snapshot.context.language, previous, proposed);
            } catch (Throwable storageUnavailable) {
                // Never apply natively after an unconfirmed save or retry it.
            } finally {
                applying = false;
            }
            if (!stored) return outcome.fail(outcome.stage, outcome.explanation);
            outcome.intentSaved = true;
            // Native verification/restoration concerns this current view only;
            // a confirmed persistent intent is not rolled back on its failure.
            if (!applyAndVerify(core, snapshot.context, before, permutation, snapshot.arrival,
                    UI_BUDGET_NS, outcome)) return false;
            outcome.success = true;
            return true;
        } catch (Throwable featureUnavailable) {
            outcome.failed();
            return false;
        } finally {
            if (outcome.intentSaved) generation++;
            LOCK.unlock();
        }
    }

    public static boolean delete(Snapshot snapshot) {
        ActionOutcome outcome = new ActionOutcome(true);
        ACTION_STATUS.set(outcome);
        if (!onMainThread())
            return outcome.fail("118-D01", "Откройте слово с панели клавиатуры.");
        if (!LOCK.tryLock())
            return outcome.fail("118-D02", "Клавиатура занята. Откройте слово ещё раз.");
        try {
            outcome.at("118-D03", "Ввод изменился или удаление недоступно. Откройте слово ещё раз.");
            if (!snapshotCurrent(snapshot) || !snapshot.canDelete)
                return outcome.fail(outcome.stage, outcome.explanation);
            outcome.at("118-D04", "Не удалось проверить список кандидатов. Откройте слово ещё раз.");
            NativeList current = enumerate(lastMainCore, deadline(UI_BUDGET_NS));
            if (!matches(snapshot, current) || !snapshotCurrent(snapshot))
                return outcome.fail(outcome.stage, outcome.explanation);
            // Reacquire the current native slot; never act on the retained pooled UI object.
            outcome.at("118-D05", "Вариант слова изменился или недоступен для удаления.");
            CandidateItem item = lastMainCore.getCandidateItem(snapshot.index, new CandidateItem());
            if (item == null || item.index != snapshot.index
                    || !snapshot.word.equals(item.getDisplayString()) || !item.canDeleteWord())
                return outcome.fail(outcome.stage, outcome.explanation);
            applying = true;
            outcome.at("118-D06", "Результат удаления не подтверждён.");
            outcome.mutationPossible = true;
            try {
                item.deleteUserWord();
            } finally {
                applying = false;
                generation++;
            }
            // The existing delete operation owns blacklisting; preferences are only cleanup.
            try {
                WordOrderStore.removeWord(snapshot.context.application,
                        snapshot.context.language, snapshot.word);
            } catch (Throwable storageUnavailable) {
                // The native delete already ran; cleanup cannot undo or repeat it.
            }
            outcome.success = true;
            return true;
        } catch (Throwable featureUnavailable) {
            outcome.failed();
            return false;
        } finally {
            LOCK.unlock();
        }
    }

    private static void autoApply(Okinawa core, long arrival) throws Exception {
        // Avoid even editor/inline inspection when this language has no explicit rules.
        if (!Engine.isInitialized()) return;
        Engine engine = Engine.getInstance();
        TouchPalIME ime = engine.getIms();
        if (ime == null) return;
        Context application = ime.getApplicationContext();
        if (application == null) application = ime;
        String language = engine.getCurrentLanguageId();
        if (language == null || !WordOrderStore.hasAny(application, language)) return;
        EditingContext context = readContext(core);
        if (context == null || !context.language.equals(language)
                || context.alphabet == WordOrderPolicy.UNSUPPORTED) return;
        List<WordOrderPolicy.Rule> rules = WordOrderStore.read(context.application, context.language);
        if (rules == null || rules.isEmpty()) return;
        NativeList before = enumerate(core, deadline(AUTO_BUDGET_NS));
        if (before == null || !stillEditing(context, arrival)) return;
        int[] permutation = WordOrderPolicy.orderCohorts(before.keys, rules,
                context.typed, context.alphabet);
        if (!validPermutation(permutation, before.keys.length) || identity(permutation)) return;
        applyAndVerify(core, context, before, permutation, arrival, AUTO_BUDGET_NS);
    }

    private static boolean applyAndVerify(Okinawa core, EditingContext context, NativeList before,
            int[] permutation, long arrival, long budget) throws Exception {
        return applyAndVerify(core, context, before, permutation, arrival, budget, null);
    }

    private static boolean applyAndVerify(Okinawa core, EditingContext context, NativeList before,
            int[] permutation, long arrival, long budget, ActionOutcome outcome) throws Exception {
        if (identity(permutation)) return true;
        if (outcome != null) outcome.at("118-N01", "Ввод изменился перед применением перемещения.");
        if (!validPermutation(permutation, before.keys.length)
                || !stillEditing(context, arrival)) {
            if (outcome != null) outcome.failed();
            return false;
        }
        if (outcome != null) outcome.at("118-N02", "Не удалось проверить доступность движка.");
        int bridgeStatus = NativeOrderBridge.capability(context.application);
        if (bridgeStatus != 0) {
            if (outcome != null) outcome.fail("118-N02(" + bridgeStatus + ")",
                    "Движок недоступен для перемещения. Перезапустите клавиатуру.");
            return false;
        }
        if (!stillEditing(context, arrival)) {
            if (outcome != null) outcome.fail("118-N03", "Ввод изменился перед применением перемещения.");
            return false;
        }
        if (outcome != null) outcome.at("118-N04", "Не удалось повторно проверить список кандидатов.");
        NativeList check = enumerate(core, deadline(budget));
        if (!sameList(before, check) || check.defaultIndex != before.defaultIndex
                || !stillEditing(context, arrival)) {
            if (outcome != null) outcome.failed();
            return false;
        }
        applying = true;
        boolean changed = false;
        try {
            if (outcome != null) {
                outcome.at("118-N05", "Движок не подтвердил применение перемещения.");
                // Entering the bridge is the uncertainty boundary; a failed JNI
                // invocation must never be described as proof of no change.
                outcome.mutationPossible = true;
            }
            int applyStatus = NativeOrderBridge.apply(context.application, permutation, before.keys.length);
            if (applyStatus != 0) {
                if (outcome != null) outcome.fail("118-N05(" + applyStatus + ")",
                        "Движок не подтвердил применение перемещения.");
                return false;
            }
            changed = true;
            generation++;
            if (outcome != null) outcome.at("118-V01", "Не удалось подтвердить выбор первого кандидата.");
            core.fireSetDefaultCandidateOperation(0);
            if (outcome != null) outcome.at("118-V02", "Не удалось завершить обработку перемещения.");
            controlledPass(core);
            if (outcome != null) outcome.at("118-V03", "Не удалось проверить изменённый список кандидатов.");
            NativeList after = enumerate(core, deadline(budget));
            if (verifyApplied(core, context, before, after, permutation, arrival, outcome)) {
                if (outcome != null) outcome.at("118-V08", "Не удалось обновить панель кандидатов.");
                refreshJavaCandidates();
                if (outcome != null) outcome.verified = true;
                return true;
            }
        } catch (Throwable featureUnavailable) {
            if (outcome != null) outcome.failed();
            // A failed controlled pass must also reach guarded native restoration.
        } finally {
            applying = false;
        }
        if (changed) {
            if (outcome != null) {
                outcome.failed();
                }
            boolean restored = restore(core, context, before, permutation, arrival, budget);
            if (outcome != null) outcome.restored = restored;
        }
        return false;
    }

    /** Same post-mutation predicates and order as the original conjunction. */
    private static boolean verifyApplied(Okinawa core, EditingContext context, NativeList before,
            NativeList after, int[] permutation, long arrival, ActionOutcome outcome) {
        if (outcome != null) outcome.at("118-V04", "Поле ввода изменилось во время проверки.");
        if (!sameSession(context, arrival)) {
            if (outcome != null) outcome.failed();
            return false;
        }
        if (outcome != null) outcome.at("118-V05", "Итоговый список не совпал с запрошенным порядком.");
        if (!matchesPermutation(before, after, permutation)) {
            if (outcome != null) outcome.failed();
            return false;
        }
        if (outcome != null) outcome.at("118-V06", "Выбор первого кандидата не подтверждён.");
        if (core.getDefaultCandidateItemIndex() != 0) {
            if (outcome != null) outcome.failed();
            return false;
        }
        if (outcome != null) outcome.at("118-V07", "Состояние набираемого слова изменилось.");
        if (!meaningfulInline(core)) {
            if (outcome != null) outcome.failed();
            return false;
        }
        return true;
    }

    private static void controlledPass(Okinawa core) {
        // Original native pass, called only after the preceding native frame returned.
        depth++;
        try {
            core.doProcessEventOriginal();
        } finally {
            depth--;
            generation++;
        }
    }

    private static boolean restore(Okinawa core, EditingContext context, NativeList before,
            int[] applied, long arrival, long budget) {
        if (!sameSession(context, arrival)) return false;
        try {
            NativeList current = enumerate(core, deadline(budget));
            if (!matchesPermutation(before, current, applied)) return false;
            int[] inverse = new int[applied.length];
            for (int i = 0; i < applied.length; i++) inverse[applied[i]] = i;
            applying = true;
            try {
                if (NativeOrderBridge.apply(context.application, inverse, before.keys.length) != 0)
                    return false;
                generation++;
                core.fireSetDefaultCandidateOperation(before.defaultIndex);
                controlledPass(core);
                NativeList restored = enumerate(core, deadline(budget));
                boolean ok = sameSession(context, arrival) && sameList(before, restored)
                        && core.getDefaultCandidateItemIndex() == before.defaultIndex;
                refreshJavaCandidates();
                return ok;
            } finally {
                applying = false;
            }
        } catch (Throwable featureUnavailable) {
            return false;
        }
    }

    private static void refreshJavaCandidates() {
        Engine.getInstance().getCandidateManager().updateCandidate(0, false);
    }

    private static boolean snapshotCurrent(Snapshot snapshot) {
        return snapshot != null && depth == 0 && !applying && lastMainCore != null
                && snapshot.generation == generation && snapshot.arrival == ARRIVALS.get()
                && stillEditing(snapshot.context, snapshot.arrival);
    }

    private static boolean matches(Snapshot snapshot, NativeList list) {
        return list != null && snapshot.total == list.keys.length
                && snapshot.index >= 0 && snapshot.index < list.keys.length
                && snapshot.word.equals(list.keys[snapshot.index])
                && Arrays.equals(snapshot.fingerprint, list.fingerprint);
    }

    private static int requestedTarget(Snapshot snapshot, int action) {
        int[] slots = snapshot.cohortSlots;
        int at = -1;
        for (int i = 0; i < slots.length; i++) if (slots[i] == snapshot.index) at = i;
        if (at < 0) return -1;
        if (action == UP) return at > 0 ? slots[at - 1] + 1 : -1;
        if (action == DOWN) return at < slots.length - 1 ? slots[at + 1] + 1 : -1;
        if (action == FIRST) return at > 0 ? slots[0] + 1 : -1;
        if (action == LAST) return at < slots.length - 1 ? slots[slots.length - 1] + 1 : -1;
        return -1;
    }

    private static NativeList enumerate(Okinawa core, long deadline) throws Exception {
        ArrayList<String> keys = new ArrayList<String>();
        ArrayList<CandidateItem> items = new ArrayList<CandidateItem>();
        HashSet<String> seen = new HashSet<String>();
        MessageDigest fingerprint = MessageDigest.getInstance("SHA-256");
        for (int i = 0; i <= MAX_CANDIDATES; i++) {
            if (expired(deadline)) {
                captureReason("111-E01", "Список читается слишком долго. Повторите нажатие.");
                return null;
            }
            CandidateItem item = core.getCandidateItem(i, new CandidateItem());
            if (item == null) {
                if (keys.isEmpty()) {
                    captureReason("111-E02", "Нет вариантов текущего слова. Повторите набор.");
                    return null;
                }
                if (expired(deadline)) {
                    captureReason("111-E03", "Список читается слишком долго. Повторите нажатие.");
                    return null;
                }
                int currentDefault = core.getDefaultCandidateItemIndex();
                // Required for a reversible mutation; -1 has no public restoring operation.
                if (currentDefault < 0 || currentDefault >= keys.size()) {
                    captureReason("111-E04", "Вариант по умолчанию недоступен. Повторите набор.");
                    return null;
                }
                return new NativeList(keys.toArray(new String[keys.size()]),
                        items.toArray(new CandidateItem[items.size()]),
                        fingerprint.digest(), currentDefault);
            }
            if (i == MAX_CANDIDATES) {
                captureReason("111-E05", "Слишком много вариантов. Допишите слово.");
                return null;
            }
            if (item.index != i) {
                captureReason("111-E06", "Список вариантов изменился. Откройте слово заново.");
                return null;
            }
            String key = item.getDisplayString();
            if (key == null || key.length() == 0 || key.length() > MAX_KEY_LENGTH) {
                captureReason("111-E07", "Этот вариант нельзя переместить. Допишите слово.");
                return null;
            }
            if (!seen.add(key)) {
                captureReason("111-E08", "В списке есть одинаковые варианты. Допишите слово.");
                return null;
            }
            byte[] text = key.getBytes(UTF8);
            digestInt(fingerprint, text.length);
            fingerprint.update(text);
            // CandidateItem.tag contains volatile UI focus/active flags. The bridge
            // separately validates native pointer identity; these unique exact keys
            // identify this list within the guarded editor/process generation.
            keys.add(key);
            items.add(item);
        }
        return null;
    }

    private static boolean sameList(NativeList a, NativeList b) {
        return a != null && b != null && a.keys.length == b.keys.length
                && Arrays.equals(a.fingerprint, b.fingerprint);
    }

    private static boolean matchesPermutation(NativeList before, NativeList after, int[] p) {
        if (before == null || after == null || p.length != after.keys.length) return false;
        for (int i = 0; i < p.length; i++) {
            if (!before.keys[p[i]].equals(after.keys[i])) return false;
        }
        return true;
    }

    private static boolean validPermutation(int[] p, int count) {
        if (p == null || p.length != count || count < 1 || count > MAX_CANDIDATES) return false;
        boolean[] seen = new boolean[count];
        for (int index : p) {
            if (index < 0 || index >= count || seen[index]) return false;
            seen[index] = true;
        }
        return true;
    }

    private static boolean identity(int[] p) {
        for (int i = 0; i < p.length; i++) if (p[i] != i) return false;
        return true;
    }

    private static boolean meaningfulInline(Okinawa core) {
        return typedLength(core) > 0;
    }

    private static int typedLength(Okinawa core) {
        String inline = core.getInlineText();
        if (inline == null || inline.length() == 0 || inline.length() > MAX_KEY_LENGTH) {
            captureReason("111-I01", "Начните новое слово на T9 и откройте его меню.");
            return -1;
        }
        ExplicitInfo info = core.getInlineInfo(new ExplicitInfo());
        if (info == null || info.length() < 1 || info.length() > 10) {
            captureReason("111-I02", "Разметка ввода недоступна. Повторите набор слова.");
            return -1;
        }
        int typed = 0;
        int typeMask = 0;
        boolean unsupported = false;
        for (int i = 0; i < info.length(); i++) {
            int type = info.getType(i), begin = info.getBegin(i), end = info.getEnd(i);
            typeMask |= type >= 0 && type < 31 ? 1 << type : 0x80000000;
            if (begin < 0 || end < begin || end > inline.length()) {
                captureReason("111-I03", "Границы ввода изменились. Повторите набор слова.");
                return -1;
            }
            if (type == 1) typed += end - begin;
            else if (type != 4) unsupported = true; // No edit/context/curve/confirmed segments.
        }
        if (unsupported || typed < 1) {
            // Only structural metadata is exposed, never the composing text.
            captureReason(unsupported ? "111-I04" : "111-I05",
                    "Типы 0x" + Integer.toHexString(typeMask) + ", частей " + info.length()
                    + ". Начните новое слово на T9.");
            return -1;
        }
        return typed;
    }

    private static EditingContext readContext(Okinawa core) {
        if (!Engine.isInitialized() || core == null) {
            captureReason("111-R01", "Дождитесь запуска клавиатуры и повторите набор.");
            return null;
        }
        Engine engine = Engine.getInstance();
        if (!engine.isNormalModeKeyboard()) {
            captureReason("111-R02", "Вернитесь к обычному набору на клавиатуре.");
            return null;
        }
        if (engine.isHardKeyMode()) {
            captureReason("111-R03", "Перемещение доступно при экранном наборе T9.");
            return null;
        }
        if (engine.getSurfaceSubType() != 1) {
            captureReason("111-R04", "Переключитесь на раскладку T9 и повторите набор.");
            return null;
        }
        if (core.getSurfaceType() != 1) {
            captureReason("111-R05", "Вернитесь к буквенной раскладке T9.");
            return null;
        }
        if (engine.getCurrentPendingInputMode() != 0) {
            captureReason("111-R06", "Начните новое обычное слово на T9.");
            return null;
        }
        if (!core.hasCandidate()) {
            captureReason("111-R07", "Нет текущих вариантов. Начните новое слово.");
            return null;
        }
        TouchPalIME ime = engine.getIms();
        Editor editor = engine.getEditor();
        if (ime == null || editor == null) {
            captureReason("111-R08", "Поле ввода недоступно. Откройте клавиатуру заново.");
            return null;
        }
        if (!ime.isInputViewShown()) {
            captureReason("111-R09", "Откройте экранную клавиатуру и повторите набор.");
            return null;
        }
        if (editor.isPasswordOrUrl()) {
            captureReason("111-R10", "Перемещение доступно в обычном текстовом поле.");
            return null;
        }
        InputConnection connection = ime.getCurrentInputConnection();
        EditorInfo info = editor.getEditorInfo();
        if (connection == null || info == null) {
            captureReason("111-R11", "Подключение к полю изменилось. Повторите нажатие.");
            return null;
        }
        CharSequence selected = editor.getSelectedText();
        if (selected != null && selected.length() != 0) {
            captureReason("111-R12", "Снимите выделение текста и повторите набор.");
            return null;
        }
        int[] selection = editor.getSelection();
        int cursor = -1;
        // Some valid InputConnections do not implement getExtractedText; OEM
        // reports [-1,-1] in that case. Unknown is not an actual selection.
        // Generation/arrival/session/native-list guards still cover mutations;
        // known-to-unknown transitions invalidate an existing UI snapshot.
        if (selection != null && selection.length >= 2) {
            if (selection[0] >= 0 && selection[1] >= 0) {
                if (selection[0] != selection[1]) {
                    captureReason("111-R13", "Снимите выделение текста и повторите набор.");
                    return null;
                }
                cursor = selection[0];
            } else if (selection[0] != selection[1]) {
                captureReason("111-R14", "Положение курсора изменилось. Повторите нажатие.");
                return null;
            }
        }
        String language = engine.getCurrentLanguageId();
        String layout = engine.getLayoutAlias();
        String inline = core.getInlineText();
        int typed = typedLength(core);
        if (language == null || language.length() == 0 || language.length() > 80) {
            captureReason("111-R15", "Выберите язык клавиатуры и повторите набор.");
            return null;
        }
        if (layout == null || layout.length() > 128) {
            captureReason("111-R16", "Выберите раскладку T9 и повторите набор.");
            return null;
        }
        if (typed < 1) return null; // typedLength supplied its structural reason.
        Context application = ime.getApplicationContext();
        if (application == null) application = ime;
        String shortName = null;
        int alphabet = WordOrderPolicy.UNSUPPORTED;
        try {
            // This is the public active language's Lua short_name, not a file
            // name or a guessed getCurrentLanguageId/layout-alias value.
            shortName = core.getCurrentLanguageShortName();
            if ("RU".equals(shortName)) alphabet = WordOrderPolicy.RUSSIAN;
            else if ("EN".equals(shortName)) alphabet = WordOrderPolicy.ENGLISH;
        } catch (Throwable mappingUnavailable) {
            // Optional mapping failure must not remove Reset/Delete or broaden
            // an unproven language to the Russian/English ordering profile.
        }
        return new EditingContext(engine, core, ime, connection, info, application, language,
                layout, inline, cursor, typed, shortName, alphabet,
                info.packageName, info.fieldId, info.inputType);
    }

    private static boolean stillEditing(EditingContext expected, long arrival) {
        if (expected == null || ARRIVALS.get() != arrival) return false;
        EditingContext current = readContext(expected.core);
        return sameBase(expected, current) && expected.inline.equals(current.inline)
                && expected.cursor == current.cursor && expected.typed == current.typed;
    }

    private static boolean sameSession(EditingContext expected, long arrival) {
        if (expected == null || ARRIVALS.get() != arrival) return false;
        EditingContext current = readContext(expected.core);
        return sameBase(expected, current) && expected.typed == current.typed;
    }

    private static boolean sameBase(EditingContext a, EditingContext b) {
        return a != null && b != null && a.engine == b.engine && a.core == b.core
                && a.ime == b.ime && a.connection == b.connection && a.info == b.info
                && a.fieldId == b.fieldId && a.inputType == b.inputType
                && equal(a.packageName, b.packageName) && a.language.equals(b.language)
                && a.layout.equals(b.layout) && a.alphabet == b.alphabet
                && equal(a.shortName, b.shortName);
    }

    private static boolean equal(String a, String b) {
        return a == null ? b == null : a.equals(b);
    }

    private static boolean onMainThread() {
        return Looper.myLooper() != null && Looper.myLooper() == Looper.getMainLooper();
    }

    private static long deadline(long budget) { return System.nanoTime() + budget; }
    private static boolean expired(long deadline) { return System.nanoTime() - deadline > 0; }

    private static void digestInt(MessageDigest digest, int value) {
        digest.update((byte) (value >>> 24));
        digest.update((byte) (value >>> 16));
        digest.update((byte) (value >>> 8));
        digest.update((byte) value);
    }

    private static final class NativeList {
        final String[] keys;
        final CandidateItem[] items;
        final byte[] fingerprint;
        final int defaultIndex;
        NativeList(String[] keys, CandidateItem[] items, byte[] fingerprint, int defaultIndex) {
            this.keys = keys;
            this.items = items;
            this.fingerprint = fingerprint;
            this.defaultIndex = defaultIndex;
        }
    }

    private static final class EditingContext {
        final Engine engine;
        final Okinawa core;
        final TouchPalIME ime;
        final InputConnection connection;
        final EditorInfo info;
        final Context application;
        final String language, layout, inline, shortName, packageName;
        final int cursor, typed, alphabet, fieldId, inputType;
        EditingContext(Engine engine, Okinawa core, TouchPalIME ime, InputConnection connection,
                EditorInfo info, Context application, String language, String layout, String inline,
                int cursor, int typed, String shortName, int alphabet,
                String packageName, int fieldId, int inputType) {
            this.engine = engine;
            this.core = core;
            this.ime = ime;
            this.connection = connection;
            this.info = info;
            this.application = application;
            this.language = language;
            this.layout = layout;
            this.inline = inline;
            this.cursor = cursor;
            this.typed = typed;
            this.shortName = shortName;
            this.alphabet = alphabet;
            this.packageName = packageName;
            this.fieldId = fieldId;
            this.inputType = inputType;
        }
    }
}
