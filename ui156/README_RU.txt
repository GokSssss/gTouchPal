gTouchPal156 · основа TouchPal Keyboard6.2.7.1

Рецепт BUILD_156.txt; пользовательские изменения RELEASE_NOTES.md.
Фактические результаты в VERIFICATION.json. Framework использует настоящие
Android windows/preferences/views/файловый IO и явные native/URI-двойники.
Это не AndroidART и не телефонная приёмка. Для156 нужно проверить на телефоне
темы, переходы Дополнительно, скрытие IME при возврате и открытие папки.

Темы: собственный диалог установленных оформлений, оригинальные i0.B0/U0,
Settings84 и writeBack/readback. Список не запускает магазин/WebView/новую задачу.
Меню: структура Preference готовится синхронно, обёртка списка до первого кадра;
повторный вход не заменяет уже установленный адаптер. Окно сохраняет resize-
режим и получает SOFT_INPUT_STATE_ALWAYS_HIDDEN, скрытие через его window token.

Компактная плашка: Save / Folder / Share. Иконки22dp, равные зоны44dp.
Folder открывает общую папку через системный обработчик каталога, с fallback
к выбору файлов и INITIAL_URI. Старые менеджеры могут проигнорировать подсказку.
Папка сохранения не меняется. Сохранение и отправка155 сохраняют прежние данные,
проверки, native формат и приватную папку recovery155. Рабочие файлы не переносятся.
Вариант кнопки одобрен владельцем «отлично» после визуала. Видео/фото владельца
в SOURCE/Git не включены; используются только собственные тестовые снимки UI.

Обязательный вход155:
https://github.com/GokSssss/gTouchPal-/releases/download/v155/155-gTouchPal-6.2.7.1.apk
https://drive.google.com/file/d/1SIBScO1exogidhB9fJl4cGWjl6OId_Dy/view
SHA256 1eeb58b276fc02541491edf65ec01f50bbd68faacb2a465149308cddea6fafb5

Подпись: https://drive.google.com/drive/folders/1m6bCBYq3Mrj8Ru_7HQhupN-jCohfjKjW
Свежие файлы проверены; значения ключа/паролей не включаются в SOURCE/APK/Git.
Опубликованные155 и прототип154/tag сохранены неизменными.
