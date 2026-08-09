#!/usr/bin/env bash
set -euo pipefail

ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
OUT_DIR="${ROOT_DIR}/build"
OUT_EXE="${OUT_DIR}/grooviev1.exe"

mkdir -p "${OUT_DIR}"

CXX=""
CXXFLAGS=("-std=c++20" "-O2")
LDFLAGS=("-Wl,--no-insert-timestamp" "-lole32" "-luuid" "-lwindowscodecs")

if command -v x86_64-w64-mingw32-g++ >/dev/null 2>&1; then
  CXX="x86_64-w64-mingw32-g++"
elif command -v clang++ >/dev/null 2>&1; then
  CXX="clang++"
  CXXFLAGS+=("--target=x86_64-w64-mingw32")
else
  echo "ERROR: No suitable cross-compiler found. Install x86_64-w64-mingw32-g++ or clang++." >&2
  exit 1
fi

echo "Building grooviev1 with ${CXX}..."
"${CXX}" "${ROOT_DIR}/main.cpp" -o "${OUT_EXE}" "${CXXFLAGS[@]}" "${LDFLAGS[@]}"

echo "Built: ${OUT_EXE}"

if [[ -d /mnt/T7G ]]; then
  if cp -f "${OUT_EXE}" /mnt/T7G/grooviev1.exe; then
    echo "Deployed: /mnt/T7G/grooviev1.exe"
  else
    echo "WARN: Build succeeded, but deploy to /mnt/T7G failed (permission denied or read-only)."
  fi
fi
