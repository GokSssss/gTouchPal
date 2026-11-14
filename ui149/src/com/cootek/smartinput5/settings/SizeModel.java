package com.cootek.smartinput5.settings;

/** Pure value-domain model. Raw vendor enums are deliberately distinct from DP. */
public final class SizeModel {
    public static final int FONT=0, PANEL_PORTRAIT=1, PANEL_LANDSCAPE=2,
            KEYBOARD=3, CANDIDATE=4, GAP=5, HEIGHT=6;
    private static final String[] KEYS={"option_keyboard_text_size_list",
        "option_keyboard_panel_height_portrait_list", "option_keyboard_panel_height_list",
        "option_keyboard_size_list", "option_candidate_size_list", "option_candidate_gap_list", "option_keyboard_height_page"};
    private static final String[] STORES={"keyboard_text_size_custom",
        "keyboard_panel_height_portrait_custom", "keyboard_panel_height_custom",
        null,null,"candidate_gap_custom",null};
    private static final int[][] VALUES={{26,28,30,32},{25,30,35,40,43},
        {25,30,35,40,43},{-2,-1,0,1,2},{0,2,4},{1,2,3,4,5,6,8,10},{}};
    private static final int[] DEFAULTS={26,43,43,0,2,10,-1};
    private static final String[] TITLES={"Размер шрифта клавиатуры",
        "Высота панели: портрет", "Высота панели: альбом", "Масштаб панели кандидатов",
        "Размер кандидатов", "Расстояние между предлагаемыми словами", "Высота клавиатуры"};
    private SizeModel() {}
    public static boolean validMode(int mode) {return mode>=0 && mode<KEYS.length;}
    private static void check(int mode) {if(!validMode(mode)) throw new IllegalArgumentException("size mode");}
    public static int modeForKey(String key) {
        if("option_customize_keyboard_size".equals(key)) return CANDIDATE;
        for(int i=0;i<KEYS.length;i++) if(KEYS[i].equals(key)) return i;
        return -1;
    }
    public static boolean handles(String key) {return modeForKey(key)>=0;}
    public static String preferenceKey(int mode) {check(mode);return KEYS[mode];}
    public static String storeKey(int mode) {check(mode);return STORES[mode];}
    public static int nativeId(int mode) {check(mode);return mode==KEYBOARD?85:mode==CANDIDATE?127:-1;}
    public static int[] values(int mode) {check(mode);return VALUES[mode].clone();}
    public static int count(int mode) {check(mode);return VALUES[mode].length;}
    public static int defaultRaw(int mode) {check(mode);return DEFAULTS[mode];}
    public static boolean isDefault(int mode,int raw) {return defaultRaw(mode)==raw;}
    public static int indexOf(int mode,int raw) {
        check(mode);for(int i=0;i<VALUES[mode].length;i++) if(VALUES[mode][i]==raw) return i;
        return -1;
    }
    public static int valueAt(int mode,int index) {
        check(mode);if(index<0 || index>=VALUES[mode].length) throw new IllegalArgumentException("size index");
        return VALUES[mode][index];
    }
    public static boolean themeDefault(int mode,int raw) {
        return (mode==FONT || mode==PANEL_PORTRAIT || mode==PANEL_LANDSCAPE || mode==HEIGHT) && isDefault(mode,raw);
    }
    public static String title(int mode) {check(mode);return TITLES[mode];}
    /** Minimal persistence contract, allowing host testing without Android stubs. */
    public interface Store {int read(int mode);boolean write(int mode,int raw);}
    /** Opening a session never clamps an unknown saved value or writes anything. */
    public static final class Session {
        private final int mode;private final Store store;private int raw;
        private final int[] allowed;private final int defaultRaw;
        public Session(int mode,Store store) {this(mode,store,SizeModel.values(mode),SizeModel.defaultRaw(mode));}
        public Session(int mode,Store store,int[] values,int defaultRaw) {
            check(mode);this.mode=mode;this.store=store;this.allowed=values.clone();this.defaultRaw=defaultRaw;reload();
        }
        private int find(int value) {for(int i=0;i<allowed.length;i++) if(allowed[i]==value) return i;return -1;}
        public int count() {return allowed.length;}
        public int[] values() {return allowed.clone();}
        public int valueAt(int index) {if(index<0||index>=allowed.length)throw new IllegalArgumentException("size index");return allowed[index];}
        public void reload() {raw=store.read(mode);}
        public int raw() {return raw;}
        public int index() {return find(raw);}
        public boolean choose(int value) {
            if(find(value)<0 && value!=defaultRaw) throw new IllegalArgumentException("size raw");
            if(value==raw) return true;
            boolean saved=store.write(mode,value);
            reload(); // reflect actual memory after a failed/partial storage operation too
            return saved && raw==value;
        }
        public boolean chooseIndex(int index) {return choose(valueAt(index));}
    }
}
