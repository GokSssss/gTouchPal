TouchPalG161 — воспроизведение проверочного выпуска

Основа: TouchPal Keyboard6.2.7.1, package com.cootek.smartinputv5.
Точный вход — неизменяемый опубликованный160APK,33462601байт:
https://github.com/GokSssss/gTouchPal/releases/download/v160/160-gTouchPal-6.2.7.1.apk
https://drive.google.com/file/d/1jkjb3uIa2iDEaOerTP1vTF6WBu7ZPd38/view
SHA256 8e4f1442ca3a817b70fe00fada759933e8cc8db02660dd29c8a111d1990b20fd
Поместить в output/160-gTouchPal-6.2.7.1.apk.
SOURCE содержит собственный код, compile-only контракты, ресурсы и рецепт
поверх закрытой основы; не является полным исходным кодом CooTek.
Проверенная исходная6.2.7.1/versionCode9999:
https://drive.google.com/file/d/1iFuHNMdAdx3nshPp1b62ZXRuJ3t3OISR/view
SHA256 469f4da1e2c0e678eee7d4956f1636ac0f1e1731ef4d8bea44a43c2e058adb06

Java17+, Python3/Pillow, ImageMagick7; Apktool2.12.1, D8/R8, apksigner,
API16/API34 JAR — branding161/TOOLCHAIN_INPUTS.json. Инструменты в tools/.
Framework: Maven3.9.11/Robolectric4.16.1, tests/framework/pom.xml.

Комплект подписи — обычная папка проекта:
https://drive.google.com/drive/folders/1m6bCBYq3Mrj8Ru_7HQhupN-jCohfjKjW
Скачать JKS и Параметры сборки и подписи.txt; передать пути через
TOUCHPAL_KEYSTORE и TOUCHPAL_SIGNING_INFO. Значения не включать в SOURCE/Git.
Прежний сертификат SHA256:
0cd49335ac2a2116cca692ae980113949977b1e4f78d4281d51cbe58ef145b46

python3 branding161/compile_helpers.py
python3 branding161/build.py
python3 branding161/tests/run_dex_checks.py
python3 branding161/tests/check_resources.py
python3 branding161/tests/framework/run.py
python3 branding161/collect_verification161.py

Результат: output/161-TouchPalG-6.2.7.1.apk,10074/6.2.7.1-161.
prepare_branding161.py вызывается build.py: сохраняет индексы resources.arsc,
заменяет ровно3строки и3плотности icon.png. Исходный знак подготовлен ImageGen;
ImageMagick выполняет только размеры и прежнюю альфа-маску. Manifest меняет
номер/версию и прямую display label, компоненты/permissions не меняются.
Новые собственные SettingsIcons149/AboutPage149 меняют видимое имя.

Backup: standalone restore/TXT-add/transfer — настоящие Button с capsule
background, без наследуемого ActionButton, который сам рисует старый контур.
Прежние14/16sp сохранены, убраны верхний pad/повторная подсказка Downloads;
сокращены интервалы. Layout-проверки используют394dp ширины/740dp доступной
высоты, fontScale1 и настоящий телефонный путь как текстовыйfixture.
При увеличенном системном шрифте/меньшем экране доступна вертикальная прокрутка.

Пути не изменены: рабочий Context.getExternalFilesDir(null)/TouchPalG;
копии в его Backup, privateUSR/native staging как160. Save сначала сохраняет
внутреннюю копию, затем предлагает Downloads/CREATE_DOCUMENT/Не сейчас.
Сохранённые байты/digest проверяются до открытия назначения и после записи.
Отказ/ошибка сохраняет исходник; pending export переживаетrecreation.
Restore показывает локальные копии формата, Folder — системный GET_CONTENT.
Входящий проверенный snapshot сохраняется после подтверждения до native staging.
Floating nonfocusable PopupWindow у конца текущего блока без inline reflow;
красное напоминание перед удалением; языковой вход TPL остаётся вЯзыках.
Языковой ACTION и physical subtype IDs сохранены. Native/ROM/TPL не меняются.
Внутренние файлы удаляются Android при uninstall; обновлять поверх.
Это host-проверки, не приёмка реального IME/ART/SDprovider на телефоне.
Опубликованные160/159APK/SOURCE/теги и исторический макет157 не изменять.
