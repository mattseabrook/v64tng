#!/bin/bash

# Build script for v64tng game engine - Linux to Windows cross-compilation
# Requires: clang, lld, mingw-w64-binutils (for windres only)

set -e  # Exit on any error

# Configuration
TARGET_TRIPLE="x86_64-pc-windows-msvc"
BUILD_DIR="build"
TARGET_DIR="/mnt/T7G"
WINSDK_BASE="/opt/winsdk"
VULKAN_DIR="/opt/VulkanSDK/1.4.313.2"

# Third-party library paths (these will be built for Windows target)
ZLIB_DIR="/opt/windows-libs/zlib"
LIBPNG_DIR="/opt/windows-libs/libpng"
ADLMIDI_DIR="/opt/windows-libs/ADLMIDI"

# Setup Windows SDK
setup_winsdk() {
    echo "=== Setting up Windows SDK ==="
    
    if [[ ! -d "$WINSDK_BASE" ]]; then
        echo "Windows SDK not found at $WINSDK_BASE"
        echo ""
        echo "Installing Windows SDK using xwin..."
        
        # Check if xwin is installed
        if ! command -v xwin &> /dev/null; then
            echo "Installing xwin..."
            cargo install xwin
        fi
        
        # Create the directory and install SDK
        sudo mkdir -p "$WINSDK_BASE"
        sudo chown $USER:$USER "$WINSDK_BASE"
        
        xwin --accept-license splat --output "$WINSDK_BASE"
        
        if [[ $? -ne 0 ]]; then
            echo "ERROR: Failed to install Windows SDK with xwin"
            exit 1
        fi
    fi
    
    # Verify the SDK structure and detect actual layout
    echo "Detecting Windows SDK structure..."
    echo "Contents of $WINSDK_BASE:"
    ls -la "$WINSDK_BASE/"
    
    # xwin creates different structure - let's detect it
    local sdk_include_base=""
    local sdk_lib_base=""
    local ucrt_include_base=""
    local ucrt_lib_base=""
    
    # Look for SDK includes
    if [[ -d "$WINSDK_BASE/sdk/include" ]]; then
        sdk_include_base="$WINSDK_BASE/sdk/include"
    elif [[ -d "$WINSDK_BASE/Include" ]]; then
        sdk_include_base="$WINSDK_BASE/Include"
    fi
    
    # Look for SDK libs  
    if [[ -d "$WINSDK_BASE/sdk/lib" ]]; then
        sdk_lib_base="$WINSDK_BASE/sdk/lib"
    elif [[ -d "$WINSDK_BASE/Lib" ]]; then
        sdk_lib_base="$WINSDK_BASE/Lib"
    fi
    
    # Look for CRT includes
    if [[ -d "$WINSDK_BASE/crt/include" ]]; then
        ucrt_include_base="$WINSDK_BASE/crt/include"
    fi
    
    # Look for CRT libs
    if [[ -d "$WINSDK_BASE/crt/lib" ]]; then
        ucrt_lib_base="$WINSDK_BASE/crt/lib"
    fi
    
    echo "Detected paths:"
    echo "  SDK includes: $sdk_include_base"
    echo "  SDK libs: $sdk_lib_base"  
    echo "  CRT includes: $ucrt_include_base"
    echo "  CRT libs: $ucrt_lib_base"
    
    # Find SDK version
    local actual_sdk_version=""
    if [[ -d "$sdk_include_base" ]]; then
        # Look for version directories
        for version_dir in "$sdk_include_base"/*/; do
            if [[ -d "$version_dir" ]]; then
                actual_sdk_version=$(basename "$version_dir")
                echo "Found SDK version: $actual_sdk_version"
                break
            fi
        done
    fi
    
    # Update global variables with detected paths
    if [[ -n "$actual_sdk_version" ]]; then
        export DETECTED_SDK_VERSION="$actual_sdk_version"
    else
        export DETECTED_SDK_VERSION="10.0.26100.0"  # Fallback to known version
    fi
    
    # Export detected paths
    export DETECTED_SDK_INCLUDE="$sdk_include_base"
    export DETECTED_SDK_LIB="$sdk_lib_base"
    export DETECTED_CRT_INCLUDE="$ucrt_include_base"
    export DETECTED_CRT_LIB="$ucrt_lib_base"
    
    # Verify critical paths exist with detected structure
    local critical_paths=()
    
    # For includes, try both versioned and non-versioned paths
    if [[ -n "$sdk_include_base" ]]; then
        if [[ -n "$DETECTED_SDK_VERSION" && -d "$sdk_include_base/$DETECTED_SDK_VERSION" ]]; then
            # Traditional Windows SDK structure
            critical_paths+=(
                "$sdk_include_base/$DETECTED_SDK_VERSION/um"
                "$sdk_include_base/$DETECTED_SDK_VERSION/shared"
            )
        else
            # xwin structure (flat)
            critical_paths+=(
                "$sdk_include_base/um"
                "$sdk_include_base/shared"
                "$sdk_include_base/ucrt"
            )
        fi
    fi
    
    if [[ -n "$ucrt_include_base" ]]; then
        critical_paths+=("$ucrt_include_base")
    fi
    
    # For libraries, detect xwin vs traditional structure
    if [[ -n "$sdk_lib_base" ]]; then
        if [[ -d "$sdk_lib_base/um/x86_64" ]]; then
            # xwin structure
            critical_paths+=(
                "$sdk_lib_base/um/x86_64"
                "$sdk_lib_base/ucrt/x86_64"
            )
        elif [[ -n "$DETECTED_SDK_VERSION" && -d "$sdk_lib_base/$DETECTED_SDK_VERSION/um/x64" ]]; then
            # Traditional structure
            critical_paths+=("$sdk_lib_base/$DETECTED_SDK_VERSION/um/x64")
        fi
    fi
    
    if [[ -n "$ucrt_lib_base" ]]; then
        if [[ -d "$ucrt_lib_base/x86_64" ]]; then
            # xwin structure
            critical_paths+=("$ucrt_lib_base/x86_64")
        elif [[ -d "$ucrt_lib_base/x64" ]]; then
            # Traditional structure
            critical_paths+=("$ucrt_lib_base/x64")
        fi
    fi
    
    echo "Verifying critical paths..."
    for path in "${critical_paths[@]}"; do
        if [[ ! -d "$path" ]]; then
            echo "ERROR: Critical SDK path missing: $path"
            exit 1
        else
            echo "✓ Found: $path"
        fi
    done
    
    # Detect library architecture
    local detected_lib_arch=""
    if [[ -d "$ucrt_lib_base/x86_64" ]] || [[ -d "$sdk_lib_base/um/x86_64" ]]; then
        detected_lib_arch="x86_64"
    elif [[ -d "$ucrt_lib_base/x64" ]] || [[ -d "$sdk_lib_base/$DETECTED_SDK_VERSION/um/x64" ]]; then
        detected_lib_arch="x64"
    fi
    
    export DETECTED_LIB_ARCH="$detected_lib_arch"
    
    echo "Detected library architecture: $detected_lib_arch"
    echo ""
    echo "Final detected paths:"
    echo "  SDK_INCLUDE: $DETECTED_SDK_INCLUDE"
    echo "  SDK_LIB: $DETECTED_SDK_LIB"
    echo "  CRT_INCLUDE: $DETECTED_CRT_INCLUDE"
    echo "  CRT_LIB: $DETECTED_CRT_LIB"
    echo "  SDK_VERSION: $DETECTED_SDK_VERSION"
    echo "  LIB_ARCH: $DETECTED_LIB_ARCH"
}

# Call setups
setup_winsdk

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
        -I "$DETECTED_SDK_INCLUDE/$DETECTED_SDK_VERSION/um" \
        -I "$DETECTED_SDK_INCLUDE/$DETECTED_SDK_VERSION/shared" \
        -I "$DETECTED_SDK_INCLUDE/ucrt" \
        -I "$DETECTED_CRT_INCLUDE" \
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
    "-I" "$DETECTED_SDK_INCLUDE/ucrt"
    "-I" "$DETECTED_CRT_INCLUDE"
    "-I" "$DETECTED_SDK_INCLUDE/$DETECTED_SDK_VERSION/um"
    "-I" "$DETECTED_SDK_INCLUDE/$DETECTED_SDK_VERSION/shared"
    "-I" "$WINSDK_BASE/sdk/include/winrt"
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
    "-L" "$DETECTED_SDK_LIB/um/$DETECTED_LIB_ARCH"
    "-L" "$DETECTED_SDK_LIB/ucrt/$DETECTED_LIB_ARCH"
    "-L" "$DETECTED_CRT_LIB/$DETECTED_LIB_ARCH"
    "-lzlib"
    "-llibpng"
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