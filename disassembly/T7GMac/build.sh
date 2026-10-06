#!/usr/bin/env bash
set -euo pipefail
project_dir="$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" && pwd)"
[[ $# -eq 0 ]] || { echo "usage: ./build.sh" >&2; exit 2; }
mkdir -p "$project_dir/build"
if rg --line-number '^[[:space:]]*incbin([[:space:]]|$)' "$project_dir/src"; then
    echo "error: source contains incbin" >&2; exit 1
fi
verify_hash() {
    local file="$1" expected="$2" actual
    actual="$(sha256sum "$file" | cut -d' ' -f1)"
    [[ "$actual" == "$expected" ]] || {
        echo "error: canonical SHA-256 mismatch: $file ($actual)" >&2
        exit 1
    }
}
(cd "$project_dir"; nasm -f bin -o build/T7GMac-rebuilt.bin src/main.asm)
verify_hash "$project_dir/build/T7GMac-rebuilt.bin" c272ee50cf7a6f040160c8a005459c18ef766c1a306a295af1679a29ad3f8907
echo "T7GMac: canonical MacBinary II SHA-256 verified"
(cd "$project_dir"; nasm -f bin -o build/T7GData-rebuilt.bin src/t7gdata.asm)
verify_hash "$project_dir/build/T7GData-rebuilt.bin" fdf219b93f271cc32ec53cb2338800293c48931c8bbdddd841f248997120dfb9
echo "T7GData: canonical MacBinary II SHA-256 verified"
dd if="$project_dir/build/T7GData-rebuilt.bin" of="$project_dir/build/T7GData-rebuilt" bs=65536 iflag=skip_bytes,count_bytes skip=128 count=4202291 status=none
verify_hash "$project_dir/build/T7GData-rebuilt" a7d8e73e9311fe2ea8a6ed21a27d45f6f2e3c6a1a83451719572b1afbbb99bba
echo "T7GData: canonical data-fork SHA-256 verified"
