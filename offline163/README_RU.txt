TouchPalG163 — штатные локальные темы и удаление устаревших сетевых экранов

Package com.cootek.smartinputv5; основа TouchPal Keyboard6.2.7.1.
Вход: неизменяемый162-TouchPalG-6.2.7.1.apk,33501279байт.
https://github.com/GokSssss/gTouchPal/releases/download/v162/162-TouchPalG-6.2.7.1.apk
https://drive.google.com/file/d/1FfYJJO5ou9XB94v1vt9PPWKGmTFypfGM/view
SHA256 83cf07561fe8a3c8a75d4eedb92f14d9c7764c4762070077950e62ba0ea9dcb2
Поместить в output/162-TouchPalG-6.2.7.1.apk.
Первичная6.2.7.1/versionCode9999 подтверждена исходнымAPK:
https://drive.google.com/file/d/1iFuHNMdAdx3nshPp1b62ZXRuJ3t3OISR/view
SHA256 469f4da1e2c0e678eee7d4956f1636ac0f1e1731ef4d8bea44a43c2e058adb06

Java17+, Python3, Apktool2.12.1/D8/apksigner/API16 иAPI34 JAR —
offline163/TOOLCHAIN_INPUTS.json; Maven3.9.11/Robolectric4.16.1.
SOURCE — собственные изменения/контракты/рецепт поверх закрытого APK,
не полный исходный код CooTek. Нативные библиотеки/темы/словари не заменяются.

Один используемый комплект сборки/подписи в обычной папке проекта:
https://drive.google.com/drive/folders/1m6bCBYq3Mrj8Ru_7HQhupN-jCohfjKjW
Скачать ключ и параметры; передать пути в TOUCHPAL_KEYSTORE и TOUCHPAL_SIGNING_INFO.
Прежний сертификат SHA256 0cd49335ac2a2116cca692ae980113949977b1e4f78d4281d51cbe58ef145b46.
Значения ключей/паролей не включать в SOURCE/Git/APK.

python3 offline163/compile_helpers.py
python3 offline163/build.py
python3 offline163/tests/run_dex_checks.py
python3 offline163/tests/check_resources.py
python3 offline163/tests/check_offline.py
python3 offline163/tests/framework/run.py
python3 offline163/collect_verification163.py
Результат output/163-TouchPalG-6.2.7.1.apk,10076/6.2.7.1-163.

В162 ошибочно использовался func.mainentrance.MainEntranceActivity/tab0.
Фото владельца показали белую оболочку с Актуальные слова/Популярные приложения;
прежнее заключение про подходящий host162 отменяется этим фактом.
Теперь ThemePicker156 делегирует new pluginwidget.t().c(Activity), тому же обработчику
штатной футболки. Он открывает исходный StoreActivity/start_page11.
Этот Activity наследует ui.g0 с ThemeMod.initDark до super.onCreate; локальная вкладка
skinappshop.i -> settings.p -> mainentrance.f возвращает оригинальный GridView.
Сетка/обычный preview/apply/image controller f и ресурсы не клонируются и не меняются.
Только устаревший SponsorTheme click закрыт. В Store всегда выбирается локальная
вкладка11, убраны старые intent filters, скрыта навигация магазина/заблокирован drawer,
отключён detailURL. Остальные родные callbacks/инициализация сохранены.

OFFLINE_POLICY163.json явно перечисляет56удалённых регистраций старых сетевых
Activity/receiver/service, включая login/cloud/store/presentation/FAQ/mainentrance.
INTERNET уже отсутствовал в162; отсутствие сохранено, BILLING удалён.
ACCESS_NETWORK_STATE/ACCESS_WIFI_STATE только читают состояние, сохранены для
совместимости нативных проверок, не дают выхода в интернет.
Native launch boundaries блокируют удалённые компоненты/сетевые actions и VIEWURL;
локальные intents, flags, result codes, voice/file/share actions передаются прежними.
AboutPage149 сохраняет2внешние ссылки и открывает внешний браузер.
DevelopmentHistory — локальный WebView assets, сохранён; не является старым onlineFAQ.
Input Engine.commitKeyEvent только открывает локальные настройки и сохранён точно.
Его прежняя unresolved ссылка AdvancedInputConnection.performEditorAction не
возникла в163, не изменена и не заявлена исправленной этим выпуском.

54framework сценария, actual DEX/SDK16 helper checks, bounded native method diff,
точные native/resource/subtype/branding checks. Модель не выполняет закрытыйJNI,
Android ART или реальную смену темы на телефоне. После исправления163 телефонная
приёмка не заявляется. Переключение dark проверяется по исходному base ui.g0,
сама тема/настройки сохраняются; новый UI выбора не рисуется.

Рабочий getExternalFilesDir(null)/TouchPalG и Backup/privateUSR/native staging,
package/подпись/physical subtypeIDs прежние. Backup161 caps/extra-save/rednote/floating
notice, TPL159 вЯзыках сохраняются. Установка поверх без удаления.
Опубликованные162/161 APK/SOURCE/теги неизменяемы. Личные фото/видео и signing material
не экспортируются. YaTouch10 и его план не меняются. Без subagents.
