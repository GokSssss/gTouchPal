gTouchPal160 — восстановление сборки

Основа TouchPal Keyboard6.2.7.1, com.cootek.smartinputv5.
Вход: опубликованный159APK,33466958байт, output/159-gTouchPal-6.2.7.1.apk.
https://drive.google.com/file/d/12Wginb-gHHvnqx1DjnE6VF52NMqGG68J/view
https://github.com/GokSssss/gTouchPal/releases/download/v159/159-gTouchPal-6.2.7.1.apk
SHA256 4e28683b6b68df32d05c130a3910d9a025d694f3946aef20bf6b40bc985d2a12
SOURCE содержит собственный код/патчи и рецепт поверх закрытого APK, не исходники производителя CooTek.
Оригинальная6.2.7.1/versionCode9999:
https://drive.google.com/file/d/1iFuHNMdAdx3nshPp1b62ZXRuJ3t3OISR/view
SHA256 469f4da1e2c0e678eee7d4956f1636ac0f1e1731ef4d8bea44a43c2e058adb06

Java17+,Python3,Apktool2.12.1,D8,apksigner,API16/API34 JAR: TOOLCHAIN_INPUTS.json.
Один комплект подписи: https://drive.google.com/drive/folders/1m6bCBYq3Mrj8Ru_7HQhupN-jCohfjKjW
СкачатьJKS и Параметры сборки и подписи.txt. Передать пути в TOUCHPAL_KEYSTORE и TOUCHPAL_SIGNING_INFO; значения в Source/Git не включать.
СертификатSHA256 0cd49335ac2a2116cca692ae980113949977b1e4f78d4281d51cbe58ef145b46.

python3 backup160/compile_helpers.py
python3 backup160/build.py
python3 backup160/tests/run_dex_checks.py
python3 backup160/tests/check_resources.py
python3 backup160/tests/framework/run.py
python3 backup160/collect_verification160.py

Результат: output/160-gTouchPal-6.2.7.1.apk,10073/6.2.7.1-160.
В160 обычноеSave сохраняет внутреннюю копию, затем предлагаетDownloads/CREATE_DOCUMENT/Не сейчас. Внешняя копия берётся из уже сохранённых байтов без повторногоnative capture. SHA256 проверяется до открытия назначения и после записи/readback; текущая внутренняя копия сохраняется при отказе/ошибке. Имя/тип/digest pending export хранятся вBundle, рабочий файл ограниченBackup и проверяется послеrecreation. Выбранное место может бытьSD/другим системнымprovider; нельзя гарантировать его доступность до выбора. Нет автоматическогоself-uninstall callback.
ВверхуBackup красное напоминание сохранить копию вне приложения. Плавающий nonfocusable PopupWindow использует нижнюю кнопку текущего раздела как dropdown anchor, не добавляет строк в основной список и следует за якорем. Стандартное размещениеPopupWindow ограничено доступным местом окна; не утверждается приёмка на реальномIME/телефоне. При отказе от дополнительной копии уведомление об уже сохранённом файле показывается повторно.
41framework сценарий проверяетPreferences/Views/Intents, сохранение/отмену, Downloads, URIIO/readback, recreation, tamper guard иfloating anchor. Native engine/parser и OS provider mapping — явные двойники/границы. ActualDEX/API16, old resources/native/ROM/lang/physical layouts сравниваются с159. Код языкового импорта и его расположение вЯзыках наследуются159. Рабочийкорень/privateUSR/native staging неизменны. Brand/Restore shape отложены; личные файлы и материалы подписи не публикуются.
