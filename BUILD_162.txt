TouchPalG162 — штатная страница установленных тем

Package com.cootek.smartinputv5; основа TouchPal Keyboard6.2.7.1.
Вход: неизменяемый161-TouchPalG-6.2.7.1.apk,33500335байт.
https://github.com/GokSssss/gTouchPal/releases/download/v161/161-TouchPalG-6.2.7.1.apk
https://drive.google.com/file/d/15haYQHgr5ehR5-nZO56dZBW8p9w9UgdG/view
SHA256 1a4ac54810ada9bef05ff172dfbab1d5023dfb8ab68c13ba4cd1b9b1c701a58d
Поместить в output/161-TouchPalG-6.2.7.1.apk.
Первичная6.2.7.1/versionCode9999 подтверждена исходнымAPK:
https://drive.google.com/file/d/1iFuHNMdAdx3nshPp1b62ZXRuJ3t3OISR/view
SHA256 469f4da1e2c0e678eee7d4956f1636ac0f1e1731ef4d8bea44a43c2e058adb06

Java17+, Python3, Apktool2.12.1/D8/apksigner/API16 иAPI34 JAR —
theme162/TOOLCHAIN_INPUTS.json; framework Maven3.9.11/Robolectric4.16.1.
SOURCE — собственные изменения/контракты/рецепт поверх закрытого APK,
не полный исходный код CooTek. Нативные библиотеки/темы/словари не заменяются.

Используемый комплект подписи в обычной папке проекта:
https://drive.google.com/drive/folders/1m6bCBYq3Mrj8Ru_7HQhupN-jCohfjKjW
Скачать ключ и параметры, передать пути в TOUCHPAL_KEYSTORE и
TOUCHPAL_SIGNING_INFO. Значения не включать в SOURCE/Git/APK.
Прежний сертификат SHA256:
0cd49335ac2a2116cca692ae980113949977b1e4f78d4281d51cbe58ef145b46

python3 theme162/compile_helpers.py
python3 theme162/build.py
python3 theme162/tests/run_dex_checks.py
python3 theme162/tests/check_resources.py
python3 theme162/tests/framework/run.py
python3 theme162/collect_verification162.py
Результат output/162-TouchPalG-6.2.7.1.apk,10075/6.2.7.1-162.

ThemePicker156 теперь лишь открывает исходный
com.cootek.smartinput5.func.mainentrance.MainEntranceActivity с tabNumber=0,
без action/dataURL. Нативная вкладка0 — mainentrance.f с GridView,
превью/текущей темой/оригинальными обработчиками. SkinActivity — прежний
посредник, а не эта страница; Store/SkinDownload не используются этим входом.
Убран собственный AlertDialog и вызовы B0/U0 из нашего окна Customize.
SettingsMenu132 переносит тот же Preference первым в tp_additions;
SettingsIcons149 повторяет установку после формирования главных групп.
Порядки детей0..N: Integer.MIN_VALUE не используется, потому что штатное
Preference.compareTo вычитает order и может переполниться.

47framework сценариев включают5новых проверок прямогоIntent/отсутствия
AlertDialog/первого места/повторного входа/миграции/неосновного экрана/finish.
Остальные42сценария сохранения, внешнейкопии, PopupWindow и TPL сохранены.
Native/JNI/реальная смена темы на телефоне — отдельная граница проверки.
Ресурсы/icon/ARSC/classes2/native/ROM/TPL/physical subtype IDs неизменны161;
изменяются свои Java и3версийные подписи, Manifest только версия.
Имя/жёлтая иконка TouchPalG, капсулыBackup, внешняякопия, красное напоминание,
плавающее окно и TPL вЯзыках сохраняются. Рабочий getExternalFilesDir/TouchPalG,
Backup/privateUSR/native staging не меняются. Установка поверх без удаления.
Опубликованные161/160 APK/SOURCE/теги и материалы YaTouch не менять.
