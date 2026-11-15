"""Remove only unsolicited activation gates from the settings Activity lifecycle."""
from pathlib import Path
import hashlib
import json

CLASS = 'com/cootek/smartinput5/TouchPalOptionInte.smali'


def apply(decoded, report):
    path = Path(decoded) / 'smali' / CLASS
    original = path.read_text()
    result = original
    changes = []
    for signature, first, last in [
        ('protected F()V', '    invoke-static {p0}, Lcom/cootek/smartinput5/func/w0;->Q(Landroid/content/Context;)Z', '    :cond_1'),
        ('protected u(Landroid/os/Bundle;)V', '    invoke-static {p0}, Lcom/cootek/smartinput5/func/w0;->R(Landroid/content/Context;)Z', '    :cond_0'),
    ]:
        start = result.index('.method ' + signature + '\n')
        end = result.index('.end method', start)
        method = result[start:end]
        a = method.index(first)
        b = method.index(last, a) + len(last)
        removed = method[a:b]
        if 'F()V' in signature:
            assert 'PreferenceActivity;->finish()V' in removed
            assert 'Guide;->k(Landroid/content/Context;)V' in removed
            assert removed.count(':cond_0') == 2 and removed.count(':cond_1') == 2
        else:
            assert '->w(Ljava/lang/String;Z)V' in removed
            assert '0x7f0f05c6' in removed
            assert removed.count(':cond_0') == 2
        # The labels belong solely to the removed activation branch.
        remaining = method[:a] + method[b:]
        for label in ((':cond_0', ':cond_1') if 'F()V' in signature else (':cond_0',)):
            assert label not in remaining
        result = result[:start] + remaining + result[end:]
        changes.append({'method': signature, 'removed_sha256': hashlib.sha256(removed.encode()).hexdigest()})
    assert 'func/z;->G0(Landroid/content/Context;)V' in result
    path.write_text(result)
    # The launcher and Android IME settings entry both used the first-run Guide.
    # Keep their asset-extraction/lifecycle/flags, routing only to our settings.
    routes = []
    for route in ['com/cootek/smartinput5/GateActivity.smali', 'com/cootek/smartinputv5/SettingsActivity.smali']:
        entry = Path(decoded) / 'smali' / route
        before = entry.read_text()
        start = before.index('.method protected o()V\n')
        end = before.index('.end method', start)
        method = before[start:end]
        old = 'const-class v2, Lcom/cootek/smartinput5/Guide;'
        assert method.count(old) == 1
        patched = method.replace(old, 'const-class v2, Lcom/cootek/smartinput5/TouchPalOptionInte;')
        entry.write_text(before[:start] + patched + before[end:])
        routes.append({'class': route, 'method': 'o()V', 'change': 'Guide target -> TouchPalOptionInte; initialization and flags preserved'})
    Path(report).write_text(json.dumps({'class': CLASS, 'changes': changes,
        'before_sha256': hashlib.sha256(original.encode()).hexdigest(),
        'after_sha256': hashlib.sha256(result.encode()).hexdigest(),
        'entry_routes': routes, 'manual_enable_guide_and_engine_unchanged': True}, indent=2) + '\n')
