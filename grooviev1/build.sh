#!/usr/bin/env bash
set -euo pipefail

ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
OUT_DIR="${ROOT_DIR}/build"
OUT_EXE="${OUT_DIR}/grooviev1.exe"
OUT_NATIVE="${OUT_DIR}/grooviev1-native"
LOCAL_T7G="${ROOT_DIR}/../T7G"

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

NATIVE_CXX="${CXX_NATIVE:-g++}"
echo "Building native raw-frame encoder with ${NATIVE_CXX}..."
"${NATIVE_CXX}" "${ROOT_DIR}/main.cpp" -o "${OUT_NATIVE}" -std=c++20 -O2
echo "Built: ${OUT_NATIVE}"

mkdir -p "${LOCAL_T7G}"
install -m 0755 "${OUT_EXE}" "${LOCAL_T7G}/grooviev1.exe"
echo "Deployed: ${LOCAL_T7G}/grooviev1.exe"
