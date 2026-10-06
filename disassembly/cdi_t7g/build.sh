#!/usr/bin/env bash
set -euo pipefail
project_dir="$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" && pwd)"
[[ $# -eq 0 ]] || { echo "usage: ./build.sh" >&2; exit 2; }
mkdir -p "$project_dir/build"
if rg --line-number '^[[:space:]]*incbin([[:space:]]|$)' "$project_dir/src"; then
    echo "error: source contains incbin" >&2; exit 1
fi
build_one() {
    local source="$1" artifact="$2" expected="$3" actual
    (cd "$project_dir"; nasm -f bin -o "build/$artifact-rebuilt" "$source")
    actual="$(sha256sum "$project_dir/build/$artifact-rebuilt" | cut -d' ' -f1)"
    [[ "$actual" == "$expected" ]] || {
        echo "error: canonical SHA-256 mismatch for $artifact: $actual" >&2; exit 1
    }
    echo "$artifact: canonical file SHA-256 verified"
}
build_one src/main.asm cdi_t7g 8a022ab62b21009fcd5846306186ac0b461686bcbd5d55b808f31d8160a397bb
build_one src/cdi_loader.asm cdi_loader 77c036ab71f58ed5ca13c46411badcb66b60f09a48ef0a3e875cf7d80fb0e66a
build_one src/cdi_nodv.asm cdi_nodv 0954566c3c89cf1473e1248ef7dc638fa546769094961532b233ab8030744dfd
