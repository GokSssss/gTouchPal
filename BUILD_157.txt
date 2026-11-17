gTouchPal157 — восстановление сборки

Основа TouchPal Keyboard6.2.7.1, com.cootek.smartinputv5.
Точный вход: опубликованный156APK,33476537байт:
https://github.com/GokSssss/gTouchPal/releases/download/v156/156-gTouchPal-6.2.7.1.apk
https://drive.google.com/file/d/10fCN8NQYzXyazI9EX4q-URoWZIf7dmWL/view
SHA256 66f0131eec274b03269175e17f4e5f7b4583c1cfca239da12993aa7b7d931740
Поместить в output/156-gTouchPal-6.2.7.1.apk.

SOURCE содержит изменения проекта, compile-only контракты и рецепт поверх
закрытого156, не полный исходный код производителя CooTek.
Оригинальная6.2.7.1/versionCode9999:
https://drive.google.com/file/d/1iFuHNMdAdx3nshPp1b62ZXRuJ3t3OISR/view
SHA256 469f4da1e2c0e678eee7d4956f1636ac0f1e1731ef4d8bea44a43c2e058adb06

Java17+, Python3, Apktool2.12.1, R8/D8, apksigner, API16/API34 JAR:
backup157/TOOLCHAIN_INPUTS.json. Инструменты в tools/.
Framework: Maven3.9.11, Robolectric4.16.1, tests/framework/pom.xml.

Используемый комплект подписи — обычная папка проекта:
https://drive.google.com/drive/folders/1m6bCBYq3Mrj8Ru_7HQhupN-jCohfjKjW
Скачать JKS и Параметры сборки и подписи.txt. Передать пути в
TOUCHPAL_KEYSTORE и TOUCHPAL_SIGNING_INFO; значения в SOURCE/Git не включать.
Сертификат SHA256 0cd49335ac2a2116cca692ae980113949977b1e4f78d4281d51cbe58ef145b46.

python3 backup157/compile_helpers.py
python3 backup157/build.py
python3 backup157/tests/run_dex_checks.py
python3 backup157/tests/check_resources.py
python3 backup157/tests/framework/run.py
python3 backup157/collect_verification157.py

Результат output/157-gTouchPal-6.2.7.1.apk,10070/6.2.7.1-157.
StorageRoot135 и основной внутренний словарь неизменны156.
Копии: Context.getExternalFilesDir(null)/TouchPalG/Backup.
Save — постоянная app-owned копия; Share — эта же копия и read-granted URI;
стрелка — дополнительный файл Downloads (MediaStore29+, legacy public folder
до29). Файловый список открывается внутри приложения, без зависимости от
доступа стороннего менеджера к Android/data. Входящий файл читается один раз
в проверенный snapshot и сохраняется в Backup после подтверждения, до native
staging. Отмена и невалидный файл не сохраняются; одинаковая копия не дублируется.
Прежние public TouchPalG/Backup копируются с проверкой и только затем удаляются
исходные файлы. Неизвестные/ссылочные/слишком большие файлы остаются; разные
одинаковые имена не затираются; удаляются только пустые прежние каталоги.

Native контроллеры/парсеры/Engine и MediaStore mapping — явные границы host-тестов.
Проверены Android Views, Filesystem, provider streams, cancel/collision/tamper,
разрешения старой платформы и сохранение исходных копий при ошибке.
Это не Android ART/приёмка реального телефона. Внутренние копии удаляются
при деинсталляции приложения; Downloads и отправка доступны для переноса.
156/155 и теги неизменны;157 после публикации тоже неизменяем.
Имя/жёлтая иконка TouchPalG — отдельный неподтверждённый макет; не включены.
Форма кнопок восстановления отложена владельцем, не менялась.
