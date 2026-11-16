"""Compile the unpublished production helpers against the Android API16 contract.

The compile_only tree contains dependency signatures, never replacement app code.
This check creates Java class files only; it does not build or execute an APK.
"""
from pathlib import Path
import argparse
import hashlib
import json
import shutil
import subprocess


def main():
    stage = Path(__file__).resolve().parents[1]
    repo = stage.parent
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--output", type=Path, default=stage / "tests/classes/api16")
    args = parser.parse_args()
    output = args.output.resolve()
    contracts = output / "contracts"
    classes = output / "helpers"
    for directory in (contracts, classes):
        if directory.exists():
            shutil.rmtree(directory)
        directory.mkdir(parents=True)

    sdk = repo / "tools/android-api16.jar"
    compiler = ["java", "-m", "jdk.compiler/com.sun.tools.javac.Main",
                "-source", "8", "-target", "8", "-bootclasspath", str(sdk)]
    signatures = sorted((stage / "compile_only/app").rglob("*.java"))
    sources = sorted((stage / "src").rglob("*.java"))
    assert sdk.is_file() and signatures and sources
    subprocess.run(compiler + ["-d", str(contracts)] + list(map(str, signatures)), check=True)
    subprocess.run(compiler + ["-classpath", str(contracts), "-d", str(classes)]
                   + list(map(str, sources)), check=True)
    report = {
        "status": "PASS", "android_api": 16,
        "check": "Exact production Java helpers compiled; unchanged dependencies are compile-only signatures",
        "apk_built": False, "phone_tested": False,
        "sources": {str(p.relative_to(stage)): hashlib.sha256(p.read_bytes()).hexdigest()
                    for p in sources},
    }
    (stage / "SOURCE_API16.json").write_text(json.dumps(report, indent=2) + "\n")
    print("PASS API16 source compilation (no APK)")


if __name__ == "__main__":
    main()
