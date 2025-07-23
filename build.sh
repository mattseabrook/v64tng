#!/bin/bash

# Build script for v64tng game engine - Linux to Windows cross-compilation
# Requires: clang, lld, mingw-w64-binutils (for windres only)

set -e  # Exit on any error

# Configuration
TARGET_TRIPLE="x86_64-pc-windows-msvc"
BUILD_DIR="build"
TARGET_DIR="/home/$USER/T7G"  # Adjust as needed

# Windows SDK paths (adjust these based on your setup)
WINSDK_VERSION="10.0.22621.0"  # Adjust to your SDK version
WINSDK_BASE="/opt/winsdk"      # Where you'll extract the Windows SDK
WINSDK_INCLUDE="$WINSDK_BASE/Include/$WINSDK_VERSION"
WINSDK_LIB="$WINSDK_BASE/Lib/$WINSDK_VERSION"

# Third-party library paths (these will be built for Windows target)
ZLIB_DIR="/opt/windows-libs/zlib"
LIBPNG_DIR="/opt/windows-libs/libpng"
ADLMIDI_DIR="/opt/windows-libs/ADLMIDI"
VULKAN_DIR="/opt/VulkanSDK/1.4.313.2"

# Clean target
if [[ "$1" == "clean" ]]; then
    echo "Cleaning build artifacts..."
    rm -rf "$BUILD_DIR"
    rm -f v64tng.exe v64tng-debug.exe *.pdb
    echo "Clean complete."
    exit 0
fi

# Determine build type
BUILD_TYPE="Release"
if [[ "$1" == "debug" ]]; then
    BUILD_TYPE="Debug"
    echo "Debug build selected."
else
    echo "Release build selected."
fi

# Create build directory
mkdir -p "$BUILD_DIR"

# Compile resources using mingw windres (only thing we use from mingw)
RESOURCE_RES="$BUILD_DIR/resource.res"
RESOURCE_RC="resource.rc"

if [[ -f "$RESOURCE_RC" ]] && ([[ ! -f "$RESOURCE_RES" ]] || [[ "$RESOURCE_RC" -nt "$RESOURCE_RES" ]]); then
    echo "Compiling resource file..."
    x86_64-w64-mingw32-windres \
        -I "$WINSDK_INCLUDE/um" \
        -I "$WINSDK_INCLUDE/shared" \
        -I "$WINSDK_INCLUDE/ucrt" \
        -o "$RESOURCE_RES" "$RESOURCE_RC"
fi

# Get source files
SOURCES=($(find src -name "*.cpp" | sort))
echo "Found ${#SOURCES[@]} source files to process:"
for src in "${SOURCES[@]}"; do
    echo "  - $(basename "$src")"
done

# Generate object file paths
OBJECTS=()
for src in "${SOURCES[@]}"; do
    obj_name="$(basename "${src%.cpp}").o"
    OBJECTS+=("$BUILD_DIR/$obj_name")
done

# Common compiler flags
COMMON_INCLUDES=(
    "-I" "./include"
    "-I" "$ZLIB_DIR/include"
    "-I" "$LIBPNG_DIR/include"
    "-I" "$ADLMIDI_DIR/include"
    "-I" "$VULKAN_DIR/Include"
    "-I" "$WINSDK_INCLUDE/ucrt"
    "-I" "$WINSDK_INCLUDE/um"
    "-I" "$WINSDK_INCLUDE/shared"
)

COMMON_FLAGS=(
    "--target=$TARGET_TRIPLE"
    "-fuse-ld=lld"
    "-DUNICODE"
    "-D_UNICODE"
    "-std=c++23"
    "-Wall"
    "-Wextra"
    "-Wpedantic"
    "-Wshadow"
    "-Wnon-virtual-dtor"
    "-Wold-style-cast"
    "-Wcast-align"
    "-Wunused"
    "-Woverloaded-virtual"
)

if [[ "$BUILD_TYPE" == "Debug" ]]; then
    CLANG_FLAGS=(
        "${COMMON_FLAGS[@]}"
        "${COMMON_INCLUDES[@]}"
        "-O0"
        "-g"
        "-gcodeview"
    )
else
    CLANG_FLAGS=(
        "${COMMON_FLAGS[@]}"
        "${COMMON_INCLUDES[@]}"
        "-O3"
        "-DNDEBUG"
        "-flto=thin"
        "-fno-rtti"
    )
fi

# Function to check if compilation is needed
needs_compile() {
    local src="$1"
    local obj="$2"
    local dep_file="$BUILD_DIR/$(basename "${src%.cpp}").d"
    
    # Object doesn't exist
    [[ ! -f "$obj" ]] && return 0
    
    # Source is newer
    [[ "$src" -nt "$obj" ]] && return 0
    
    # Check dependencies
    if [[ -f "$dep_file" ]]; then
        while read -r dep; do
            # Skip the target part and empty lines
            dep=$(echo "$dep" | sed 's/^[^:]*:\s*//' | tr ' ' '\n' | head -1)
            [[ -z "$dep" ]] && continue
            [[ "$dep" -nt "$obj" ]] && return 0
        done < "$dep_file"
    fi
    
    # Object file has zero size
    [[ ! -s "$obj" ]] && return 0
    
    return 1
}

# Compile source files
echo "Compiling source files..."
COMPILED_OBJECTS=()
START_TIME=$(date +%s)

for i in "${!SOURCES[@]}"; do
    src="${SOURCES[$i]}"
    obj="${OBJECTS[$i]}"
    
    echo "Processing [$(($i + 1))/${#SOURCES[@]}] $(basename "$src")..."
    
    if needs_compile "$src" "$obj"; then
        echo "  Compiling $(basename "$src")..."
        clang++ -c "$src" -o "$obj" "${CLANG_FLAGS[@]}" -MMD
        
        if [[ ! -f "$obj" ]]; then
            echo "ERROR: Object file wasn't created!"
            exit 1
        fi
        
        echo "  Compiled $(basename "$src") - Size: $(stat -c%s "$obj") bytes"
    else
        echo "  Object file is up to date - Size: $(stat -c%s "$obj") bytes"
    fi
    
    COMPILED_OBJECTS+=("$obj")
done

END_TIME=$(date +%s)
DURATION=$((END_TIME - START_TIME))
echo "Compilation completed in ${DURATION} seconds."

# Verify all object files exist
echo "Verifying all object files before linking..."
for obj in "${OBJECTS[@]}"; do
    if [[ ! -f "$obj" ]]; then
        echo "ERROR: Missing object file: $obj"
        exit 1
    fi
done
echo "All object files verified."

# Link executable
echo "Linking executable..."

LINK_ARGS=(
    "--target=$TARGET_TRIPLE"
    "-fuse-ld=lld"
    "${OBJECTS[@]}"
)

# Add resource file if it exists
[[ -f "$RESOURCE_RES" ]] && LINK_ARGS+=("$RESOURCE_RES")

# Library paths and libraries
LINK_ARGS+=(
    "-L" "$ZLIB_DIR/lib"
    "-L" "$LIBPNG_DIR/lib"
    "-L" "$ADLMIDI_DIR/lib"
    "-L" "$VULKAN_DIR/Lib"
    "-L" "$WINSDK_LIB/um/x64"
    "-L" "$WINSDK_LIB/ucrt/x64"
    "-lzlibstatic"
    "-llibpng16_static"
    "-lADLMIDI"
    "-lvulkan-1"
    "-luser32"
    "-lgdi32"
    "-lshlwapi"
    "-lshell32"
    "-ld2d1"
    "-lole32"
    "-luuid"
    "-lwinmm"
    "-Wl,/SUBSYSTEM:WINDOWS"
)

if [[ "$BUILD_TYPE" == "Debug" ]]; then
    OUTPUT_EXE="v64tng-debug.exe"
    LINK_ARGS+=("-Wl,/DEBUG:FULL")
else
    OUTPUT_EXE="v64tng.exe"
    LINK_ARGS+=("-Wl,/OPT:REF")
fi

clang++ "${LINK_ARGS[@]}" -o "$OUTPUT_EXE"

if [[ $? -eq 0 ]]; then
    echo "Build successful! Executable: $OUTPUT_EXE"
    
    # Deploy to target directory
    mkdir -p "$TARGET_DIR"
    
    # Clean old binaries
    rm -f "$TARGET_DIR"/*.exe "$TARGET_DIR"/*.pdb
    
    # Copy new binary
    cp "$OUTPUT_EXE" "$TARGET_DIR/"
    
    echo "Deployed to $TARGET_DIR"
else
    echo "Build failed!"
    exit 1
fi