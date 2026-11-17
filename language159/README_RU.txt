gTouchPal159 — восстановление сборки

Основа TouchPal Keyboard6.2.7.1, com.cootek.smartinputv5.
Вход: опубликованный158APK,33467377байт, output/158-gTouchPal-6.2.7.1.apk.
https://drive.google.com/file/d/1iHQGKa56eM7zVeRC7ALpcTZxIGRd3qIB/view
https://github.com/GokSssss/gTouchPal/releases/download/v158/158-gTouchPal-6.2.7.1.apk
SHA256 b08fbc1070de01a2d60d288a0f3f7bc4d3adebf9fde4881aebdc7d33f83b16d8
SOURCE содержит собственный код/патчи и рецепт поверх закрытого APK, не исходники производителя CooTek.
Оригинальная6.2.7.1/versionCode9999:
https://drive.google.com/file/d/1iFuHNMdAdx3nshPp1b62ZXRuJ3t3OISR/view
SHA256 469f4da1e2c0e678eee7d4956f1636ac0f1e1731ef4d8bea44a43c2e058adb06

Java17+,Python3,Apktool2.12.1,D8,apksigner,API16/API34 JAR: TOOLCHAIN_INPUTS.json.
Один комплект подписи: https://drive.google.com/drive/folders/1m6bCBYq3Mrj8Ru_7HQhupN-jCohfjKjW
СкачатьJKS и Параметры сборки и подписи.txt. Передать пути в TOUCHPAL_KEYSTORE и TOUCHPAL_SIGNING_INFO; значения в Source/Git не включать.
СертификатSHA256 0cd49335ac2a2116cca692ae980113949977b1e4f78d4281d51cbe58ef145b46.

python3 language159/compile_helpers.py
python3 language159/build.py
python3 language159/tests/run_dex_checks.py
python3 language159/tests/check_resources.py
python3 language159/tests/framework/run.py
python3 language159/collect_verification159.py

Результат: output/159-gTouchPal-6.2.7.1.apk,10072/6.2.7.1-159.
В159 меняется расположение входа: CompactSettings добавляет строку только в два штатных LanguageListActivity; Intent открывает язык-only режим прежнего собственного BackupActivity. Выбор файлов/проверкаTPL/замена/BackupLanguage остаются158. Из обычного BackupActivity блок языков удалён. Vendor методы и Manifest components не меняются; новые Activity не добавляются. Native language list/engine — явная граница framework-проверок, проверяются реальные Views/Preferences/Intents, навигация/отмена/контейнеры и filesystem. Это не телефонная/ART приёмка.
Рабочая папка, приватныйUSR/native staging, языки/ROM/native ресурсы и физические раскладки не перемещаются. Резервные копии в app-owned Backup удаляются Android при удалении приложения; копии вDownloads/отправленные отдельно сохраняются. Обновление поверх сохраняет данные.
158/157 APK/SOURCE/теги неизменны. BrandingTouchPalG/жёлтая иконка остаётся неподтверждённым макетом, формаRestore отложена владельцем.
