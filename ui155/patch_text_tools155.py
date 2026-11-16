"""Bounded presentation/path edits in the inherited mod's two TXT activities only."""
import hashlib
import json
import re
from pathlib import Path


def sha(text):
    return hashlib.sha256(text.encode()).hexdigest()


def patch_text_tools(decoded, report):
    records = []
    for name, methods in [
        ('DictionaryEditorActivity', ['sdDir()Ljava/io/File;', 'fallbackDir()Ljava/io/File;']),
        ('FullDictExportActivity', ['outDir()Ljava/io/File;']),
    ]:
        path = decoded / ('smali_classes2/com/cootek/smartinput5/ui/settings/' + name + '.smali')
        text = before = path.read_text()
        changed = []
        for method in methods:
            pattern = re.compile(r'^\.method private ' + re.escape(method) + r'\n.*?^\.end method', re.M | re.S)
            match = pattern.search(text)
            assert match, (name, method)
            old = match.group(0)
            call = 'Lcom/cootek/smartinput5/storage/StorageRoot135;->backupDirectory(Landroid/content/Context;)Ljava/io/File;'
            assert old.count(call) == 1, (name, method)
            new = old.replace(call, 'Lcom/cootek/smartinput5/backup/BackupLocations155;->textDirectory(Landroid/content/Context;)Ljava/io/File;')
            text = text[:match.start()] + new + text[match.end():]
            changed.append({'method': method, 'before_sha256': sha(old), 'after_sha256': sha(new)})
        if name == 'DictionaryEditorActivity':
            pattern = re.compile(r'^\.method private buildUi\(\)V\n.*?^\.end method', re.M | re.S)
            match = pattern.search(text); assert match
            old = match.group(0); new = old
            hook = '    .locals 9\n'
            assert new.count(hook) == 1
            new = new.replace(hook, hook + '\n    const-string v0, "Импорт-экспорт словаря"\n\n    invoke-virtual {p0, v0}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V\n', 1)
            for resource, label in [('0bb8', 'Экспорт слов в TXT'), ('0bc2', 'Импорт слов из TXT'), ('0bb9', 'Выгрузить все слова в TXT')]:
                source = ('    const v2, 0x7f0f' + resource + '\n\n'
                    '    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;\n\n'
                    '    move-result-object v2')
                assert new.count(source) == 1, resource
                new = new.replace(source, '    const-string v2, ' + json.dumps(label, ensure_ascii=False))
            text = text[:match.start()] + new + text[match.end():]
            changed.append({'method':'buildUi()V','before_sha256':sha(old),'after_sha256':sha(new),
                'change':'Title/button wording explicitly distinguishes TXT words from raw western.usr.'})
        assert text != before
        path.write_text(text)
        records.append({'file':str(path.relative_to(decoded)), 'before_sha256':sha(before),
            'after_sha256':sha(text),'methods':changed})
    report.write_text(json.dumps({'status':'PASS','modified_mod_tools':records,
        'native_parser_and_dictionary_methods_changed':False,
        'working_storage_paths_changed':False},ensure_ascii=False,indent=2)+'\n')
