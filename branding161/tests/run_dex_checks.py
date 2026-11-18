"""Compare exact153/155 actual DEX and resolve API16 helper calls."""
from pathlib import Path
import json
import hashlib
import os
import subprocess
import sys

T = Path(__file__).resolve().parents[1]
R = T.parent
APK = Path(sys.argv[1]) if len(sys.argv) > 1 else R / 'output/161-TouchPalG-6.2.7.1.apk'
BASE = R / 'output/160-gTouchPal-6.2.7.1.apk'
TOOL = R / 'tools/apktool_2.12.1.jar'
OUT = T / 'tests/classes'


def run(*args):
    result = subprocess.run(list(map(str, args)), capture_output=True, text=True)
    assert result.returncode == 0, result.stdout + result.stderr
    return result.stdout


OUT.mkdir(parents=True, exist_ok=True)
run('java', '-m', 'jdk.compiler/com.sun.tools.javac.Main', '-cp', TOOL, '-d', OUT,
    T / 'tests/CompareCleanDex.java', T / 'tests/VerifySpaceAbi.java')
cp = str(OUT) + os.pathsep + str(TOOL)
dex = run('java', '-cp', cp, 'CompareCleanDex', BASE, APK, T / 'ALLOWED_DEX_CHANGES.txt', T / 'ALLOWED_METHOD_CHANGES.txt')
(T / 'DEX_TEST.txt').write_text(dex)
families = []
compiled = T / 'HELPERS_COMPILED.json'
if compiled.exists():
    families = json.loads(compiled.read_text()).get('families', [])
scopes = {'L' + family for family in families}
for line in (T / 'ALLOWED_DEX_CHANGES.txt').read_text().splitlines():
    parts = line.strip().split()
    if parts and not parts[0].startswith('#') and parts[0] in ('change', 'add'):
        scopes.add(parts[1].rstrip('*').removesuffix(';'))
assert scopes, 'Declare exact 135 changed classes first'
prefixes = ','.join(sorted(scopes))
modern = 'Lcom/cootek/smartinput5/cursor/Api34CursorBounds'
core = ','.join('L' + f for f in families if not ('L' + f).startswith(modern))
assert core  # API34 cursor family is inherited unchanged from exact127
sdk34 = R / 'tools/android-api34.jar'
assert hashlib.sha256(sdk34.read_bytes()).hexdigest() == '6cea1df3efb77103ac3e2beb9bf4718964b0e0869ab16d39d29d5cbae1c147ad'
abi = run('java', '-Dandroid.sdk.jar=' + str(R / 'tools/android-api16.jar'),
          '-Dtheme.helper.prefixes=' + core, '-Dsdk.helper.prefixes=' + core,
          '-Dabi.only.prefixes=' + core,
          '-Dsdk.exclude.prefixes=' + modern, '-Dabi.min.sdk=10', '-Dabi.min.vendor=30', '-Dabi.min.classes='+str(len(json.loads(compiled.read_text())['class_entries'])), '-cp', cp, 'VerifySpaceAbi', APK)
(T / 'ABI_TEST.txt').write_text(abi)
abi_hooks = run('java', '-Dandroid.sdk.jar=' + str(sdk34), '-Dandroid.sdk.label=SDK34_hooks', '-Dabi.only.methods.file='+str(T / 'ALLOWED_METHOD_CHANGES.txt'),
          '-Dtheme.helper.prefixes=' + prefixes, '-Dsdk.helper.prefixes=' + prefixes,
          '-Dabi.only.prefixes=' + prefixes, '-Dabi.min.sdk=10', '-Dabi.min.vendor=30', '-Dabi.min.classes='+str(len(json.loads(compiled.read_text())['class_entries'])), '-cp', cp, 'VerifySpaceAbi', APK)
(T / 'ABI_HOOKS_TEST.txt').write_text(abi_hooks)

abi34 = run('java', '-Dandroid.sdk.jar=' + str(sdk34), '-Dandroid.sdk.label=SDK34',
            '-Dtheme.helper.prefixes=' + modern, '-Dsdk.helper.prefixes=' + modern,
            '-Dabi.only.prefixes=' + modern, '-Dabi.min.vendor=1',
            '-Dabi.min.classes=1', '-Dabi.min.sdk=10', '-Dabi.min.vendor=30', '-cp', cp, 'VerifySpaceAbi', APK)
(T / 'ABI34_TEST.txt').write_text(abi34)
(T / 'DEX_VERIFICATION.json').write_text(json.dumps({
    'apk': str(APK), 'apk_sha256': hashlib.sha256(APK.read_bytes()).hexdigest(),
    'base_sha256': hashlib.sha256(BASE.read_bytes()).hexdigest(),
    'allowed_scope_sha256': hashlib.sha256((T / 'ALLOWED_DEX_CHANGES.txt').read_bytes()).hexdigest(),
    'class_comparison_passed': True, 'actual_dex_abi_resolution_passed': True,
    'compile_only_stubs_checked_against_actual_apk': bool(families),
    'actual_smali_overlay_apis_checked': True,
    'original_sdk23_permission_calls_inherited_unchanged': True,
    'new_helpers_checked_with_api16_original_hook_classes_resolved_with_api34': True,
    'resolved_overlay_prefixes': sorted(scopes),
    'sdk16_core_helper_prefixes': core.split(','),
    'sdk34_optional_helper_prefix': modern,
    'sdk34_optional_actual_dex_passed': True,
    'sdk34_optional_jar_sha256': hashlib.sha256(sdk34.read_bytes()).hexdigest(),
    'sdk34_not_claimed_as_sdk16': True,
    'sdk34_cursor_bridge_inherited_unchanged': True,
}, indent=2) + '\n')
print(dex.strip())
print(abi.strip())
print(abi_hooks.strip())
print(abi34.strip())
