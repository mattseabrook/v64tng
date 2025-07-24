#!/bin/bash

# Build Windows static libraries using clang cross-compilation
# This builds zlib, libpng, and libADLMIDI for Windows target on Linux

set -e

TARGET_TRIPLE="x86_64-pc-windows-msvc"
INSTALL_PREFIX="/opt/windows-libs"
WINSDK_BASE="/opt/winsdk"
WINSDK_VERSION="10.0.22621.0"
BUILD_DIR="/tmp/windows-libs-build"

# Ensure we have the directories
mkdir -p "$INSTALL_PREFIX"
mkdir -p "$BUILD_DIR"

# Common CMake toolchain settings
create_toolchain_file() {
    # Use detected paths from setup_winsdk
    local sdk_include="${DETECTED_SDK_INCLUDE:-$WINSDK_BASE/sdk/include}"
    local sdk_lib="${DETECTED_SDK_LIB:-$WINSDK_BASE/sdk/lib}"
    local crt_include="${DETECTED_CRT_INCLUDE:-$WINSDK_BASE/crt/include}"
    local crt_lib="${DETECTED_CRT_LIB:-$WINSDK_BASE/crt/lib}"
    local sdk_version="${DETECTED_SDK_VERSION:-$WINSDK_VERSION}"
    
    cat > windows-cross.cmake << EOF
set(CMAKE_SYSTEM_NAME Windows)
set(CMAKE_SYSTEM_PROCESSOR AMD64)

set(CMAKE_C_COMPILER clang)
set(CMAKE_CXX_COMPILER clang++)
# Don't set RC compiler to avoid mingw usage - we don't need resources for static libs
# set(CMAKE_RC_COMPILER x86_64-w64-mingw32-windres)

set(CMAKE_C_COMPILER_TARGET x86_64-pc-windows-msvc)
set(CMAKE_CXX_COMPILER_TARGET x86_64-pc-windows-msvc)

# Detected Windows SDK paths
set(SDK_INCLUDE "$sdk_include")
set(SDK_LIB "$sdk_lib")
set(CRT_INCLUDE "$crt_include")
set(CRT_LIB "$crt_lib")
set(SDK_VERSION "$sdk_version")

# Include paths
set(INCLUDE_PATHS "")
if(EXISTS "\${CRT_INCLUDE}")
    list(APPEND INCLUDE_PATHS "-I\${CRT_INCLUDE}")
endif()
# Try both versioned (traditional) and flat (xwin) structures
if(EXISTS "\${SDK_INCLUDE}/\${SDK_VERSION}/um")
    list(APPEND INCLUDE_PATHS "-I\${SDK_INCLUDE}/\${SDK_VERSION}/um")
elseif(EXISTS "\${SDK_INCLUDE}/um")
    list(APPEND INCLUDE_PATHS "-I\${SDK_INCLUDE}/um")
endif()
if(EXISTS "\${SDK_INCLUDE}/\${SDK_VERSION}/shared")
    list(APPEND INCLUDE_PATHS "-I\${SDK_INCLUDE}/\${SDK_VERSION}/shared")
elseif(EXISTS "\${SDK_INCLUDE}/shared")
    list(APPEND INCLUDE_PATHS "-I\${SDK_INCLUDE}/shared")
endif()
# Add UCRT include path (xwin puts it in sdk/include/ucrt)
if(EXISTS "\${SDK_INCLUDE}/ucrt")
    list(APPEND INCLUDE_PATHS "-I\${SDK_INCLUDE}/ucrt")
endif()

# Library paths
set(LIB_PATHS "")
# Try xwin structure first (x86_64), then traditional (x64)
if(EXISTS "\${CRT_LIB}/x86_64")
    list(APPEND LIB_PATHS "-L\${CRT_LIB}/x86_64")
elseif(EXISTS "\${CRT_LIB}/x64")
    list(APPEND LIB_PATHS "-L\${CRT_LIB}/x64")
endif()

if(EXISTS "\${SDK_LIB}/um/x86_64")
    list(APPEND LIB_PATHS "-L\${SDK_LIB}/um/x86_64")
elseif(EXISTS "\${SDK_LIB}/\${SDK_VERSION}/um/x64")
    list(APPEND LIB_PATHS "-L\${SDK_LIB}/\${SDK_VERSION}/um/x64")
endif()

# Add UCRT library path (xwin puts it in sdk/lib/ucrt)
if(EXISTS "\${SDK_LIB}/ucrt/x86_64")
    list(APPEND LIB_PATHS "-L\${SDK_LIB}/ucrt/x86_64")
endif()

# Join the paths with spaces
string(REPLACE ";" " " INCLUDE_FLAGS "\${INCLUDE_PATHS}")
string(REPLACE ";" " " LIB_FLAGS "\${LIB_PATHS}")

# Compiler and linker flags - FORCE static runtime linking with clang-compatible flags
set(CMAKE_C_FLAGS_INIT "-fuse-ld=lld \${INCLUDE_FLAGS} -D_MT -Wl,/DEFAULTLIB:libcmt.lib -Wl,/NODEFAULTLIB:msvcrt.lib")
set(CMAKE_CXX_FLAGS_INIT "-fuse-ld=lld \${INCLUDE_FLAGS} -D_MT -Wl,/DEFAULTLIB:libcmt.lib -Wl,/NODEFAULTLIB:msvcrt.lib")

# Force release mode flags to avoid debug runtime dependencies
set(CMAKE_C_FLAGS_RELEASE_INIT "-O2 -DNDEBUG -D_MT")
set(CMAKE_CXX_FLAGS_RELEASE_INIT "-O2 -DNDEBUG -D_MT")

# Override debug flags to prevent CMake from using debug runtime during detection
set(CMAKE_C_FLAGS_DEBUG_INIT "-O0 -D_MT")
set(CMAKE_CXX_FLAGS_DEBUG_INIT "-O0 -D_MT")

# Force static runtime linking
set(CMAKE_MSVC_RUNTIME_LIBRARY "MultiThreaded")

# Disable debug-specific flags that cause msvcrtd.lib dependency
set(CMAKE_C_FLAGS_DEBUG "")
set(CMAKE_CXX_FLAGS_DEBUG "")

# CRITICAL: Add startup and standard libraries to linker flags for proper cross-compilation
# This ensures CMake's compiler detection tests can link properly
# Use FULL PATHS for all libs to avoid search/resolution issues in Clang MSVC mode
set(WINDOWS_LIBS "")
set(WINDOWS_LIBS "\${WINDOWS_LIBS} \${LIB_FLAGS}")

# Add kernel32 with full path (try x86_64 first, then x64)
if(EXISTS "\${SDK_LIB}/um/x86_64/kernel32.lib")
    set(WINDOWS_LIBS "\${WINDOWS_LIBS} \${SDK_LIB}/um/x86_64/kernel32.lib")
elseif(EXISTS "\${SDK_LIB}/um/x64/kernel32.lib")
    set(WINDOWS_LIBS "\${WINDOWS_LIBS} \${SDK_LIB}/um/x64/kernel32.lib")
elseif(EXISTS "\${SDK_LIB}/\${SDK_VERSION}/um/x64/kernel32.lib")
    set(WINDOWS_LIBS "\${WINDOWS_LIBS} \${SDK_LIB}/\${SDK_VERSION}/um/x64/kernel32.lib")
endif()

# Add user32 with full path (same as above)
if(EXISTS "\${SDK_LIB}/um/x86_64/user32.lib")
    set(WINDOWS_LIBS "\${WINDOWS_LIBS} \${SDK_LIB}/um/x86_64/user32.lib")
elseif(EXISTS "\${SDK_LIB}/um/x64/user32.lib")
    set(WINDOWS_LIBS "\${WINDOWS_LIBS} \${SDK_LIB}/um/x64/user32.lib")
elseif(EXISTS "\${SDK_LIB}/\${SDK_VERSION}/um/x64/user32.lib")
    set(WINDOWS_LIBS "\${WINDOWS_LIBS} \${SDK_LIB}/\${SDK_VERSION}/um/x64/user32.lib")
endif()

# Add CRT startup libraries with full paths
if(EXISTS "\${CRT_LIB}/x86_64/libcmt.lib")
    set(WINDOWS_LIBS "\${WINDOWS_LIBS} \${CRT_LIB}/x86_64/libcmt.lib")
elseif(EXISTS "\${CRT_LIB}/x64/libcmt.lib")
    set(WINDOWS_LIBS "\${WINDOWS_LIBS} \${CRT_LIB}/x64/libcmt.lib")
endif()

if(EXISTS "\${SDK_LIB}/ucrt/x86_64/libucrt.lib")
    set(WINDOWS_LIBS "\${WINDOWS_LIBS} \${SDK_LIB}/ucrt/x86_64/libucrt.lib")
elseif(EXISTS "\${SDK_LIB}/ucrt/x64/libucrt.lib")
    set(WINDOWS_LIBS "\${WINDOWS_LIBS} \${SDK_LIB}/ucrt/x64/libucrt.lib")
endif()

# Apply these libraries to ALL linker flags so CMake detection works
set(CMAKE_EXE_LINKER_FLAGS_INIT "\${WINDOWS_LIBS}")
set(CMAKE_SHARED_LINKER_FLAGS_INIT "\${WINDOWS_LIBS}")
set(CMAKE_MODULE_LINKER_FLAGS_INIT "\${WINDOWS_LIBS}")

# Also set standard libraries for good measure
set(CMAKE_C_STANDARD_LIBRARIES "\${WINDOWS_LIBS}")
set(CMAKE_CXX_STANDARD_LIBRARIES "\${WINDOWS_LIBS}")

# Find root path  
set(CMAKE_FIND_ROOT_PATH "$WINSDK_BASE" "$INSTALL_PREFIX")
set(CMAKE_FIND_ROOT_PATH_MODE_PROGRAM NEVER)
set(CMAKE_FIND_ROOT_PATH_MODE_LIBRARY ONLY)
set(CMAKE_FIND_ROOT_PATH_MODE_INCLUDE ONLY)
EOF
}

build_zlib() {
    echo "=== Building zlib ==="
    
    cd "$BUILD_DIR"
    
    if [[ ! -d "zlib-1.3.1" ]]; then
        wget https://github.com/madler/zlib/releases/download/v1.3.1/zlib-1.3.1.tar.gz
        tar -xzf zlib-1.3.1.tar.gz
    fi
    
    cd zlib-1.3.1
    
    # Clean previous build
    rm -rf build_windows
    mkdir build_windows
    cd build_windows
    
    create_toolchain_file
    
    cmake .. \
        -DCMAKE_TOOLCHAIN_FILE=windows-cross.cmake \
        -DCMAKE_BUILD_TYPE=Release \
        -DCMAKE_INSTALL_PREFIX="$INSTALL_PREFIX/zlib" \
        -DBUILD_SHARED_LIBS=OFF \
        -DZLIB_BUILD_EXAMPLES=OFF \
        -DCMAKE_POSITION_INDEPENDENT_CODE=OFF \
        -DCMAKE_MSVC_RUNTIME_LIBRARY=MultiThreaded
    
    # Only build the static library target to avoid shared library issues
    make zlibstatic -j$(nproc)
    
    # Install just the static library and headers manually
    mkdir -p "$INSTALL_PREFIX/zlib/lib"
    mkdir -p "$INSTALL_PREFIX/zlib/include"
    
    # Copy the static library
    cp zlibstatic.lib "$INSTALL_PREFIX/zlib/lib/zlib.lib"
    
    # Copy the headers
    cp ../zlib.h "$INSTALL_PREFIX/zlib/include/"
    cp zconf.h "$INSTALL_PREFIX/zlib/include/"
    
    echo "zlib build complete"
}

build_libpng() {
    echo "=== Building libpng ==="
    
    cd "$BUILD_DIR"
    
    if [[ ! -d "libpng-1.6.43" ]]; then
        wget https://download.sourceforge.net/libpng/libpng-1.6.43.tar.gz
        tar -xzf libpng-1.6.43.tar.gz
    fi
    
    cd libpng-1.6.43
    
    # Clean previous build
    rm -rf build_windows
    mkdir build_windows
    cd build_windows
    
    create_toolchain_file
    
    cmake .. \
        -DCMAKE_TOOLCHAIN_FILE=windows-cross.cmake \
        -DCMAKE_BUILD_TYPE=Release \
        -DCMAKE_INSTALL_PREFIX="$INSTALL_PREFIX/libpng" \
        -DBUILD_SHARED_LIBS=OFF \
        -DPNG_STATIC=ON \
        -DPNG_SHARED=OFF \
        -DPNG_TESTS=OFF \
        -DZLIB_ROOT="$INSTALL_PREFIX/zlib" \
        -DCMAKE_POSITION_INDEPENDENT_CODE=OFF \
        -DCMAKE_MSVC_RUNTIME_LIBRARY=MultiThreaded
    
    # Build only static library target to avoid potential issues
    make png_static -j$(nproc)
    
    # Install manually to avoid shared library issues
    mkdir -p "$INSTALL_PREFIX/libpng/lib"
    mkdir -p "$INSTALL_PREFIX/libpng/include"
    
    # Copy the static library (libpng names it differently)
    cp libpng*.lib "$INSTALL_PREFIX/libpng/lib/libpng.lib" 2>/dev/null || cp png*.lib "$INSTALL_PREFIX/libpng/lib/libpng.lib"

    # Copy the headers
    cp ../png.h "$INSTALL_PREFIX/libpng/include/"
    cp ../pngconf.h "$INSTALL_PREFIX/libpng/include/"
    cp pnglibconf.h "$INSTALL_PREFIX/libpng/include/"
    
    echo "libpng build complete"
}

build_adlmidi() {
    echo "=== Building libADLMIDI ==="
    
    cd "$BUILD_DIR"
    
    if [[ ! -d "libADLMIDI" ]]; then
        git clone https://github.com/Wohlstand/libADLMIDI.git
    fi
    
    cd libADLMIDI
    
    # Clean previous build
    rm -rf build_windows
    mkdir build_windows
    cd build_windows
    
    create_toolchain_file
 
    cmake .. \
        -DCMAKE_TOOLCHAIN_FILE=windows-cross.cmake \
        -DCMAKE_BUILD_TYPE=Release \
        -DCMAKE_INSTALL_PREFIX="$INSTALL_PREFIX/ADLMIDI" \
        -DBUILD_SHARED_LIBS=OFF \
        -DlibADLMIDI_STATIC=ON \
        -DlibADLMIDI_SHARED=OFF \
        -DADLMIDI_STATIC_LIBRARY=ON \
        -DWITH_UNIT_TESTS=OFF \
        -DWITH_VLC_PLUGIN=OFF \
        -DWITH_MIDIPLAY=OFF \
        -DWITH_ADLMIDI2=OFF \
        -DWITH_OLD_UTILS=OFF \
        -DCMAKE_POSITION_INDEPENDENT_CODE=OFF \
        -DCMAKE_MSVC_RUNTIME_LIBRARY=MultiThreaded \
        -DFORCE_STATIC_LIBS=ON
    
    # Build only static library target to avoid potential issues
    make ADLMIDI_static -j$(nproc)
    
    # Install manually to avoid shared library issues
    mkdir -p "$INSTALL_PREFIX/ADLMIDI/lib"
    mkdir -p "$INSTALL_PREFIX/ADLMIDI/include"
    
    # Copy the static library with standard name
    cp *ADLMIDI*.lib "$INSTALL_PREFIX/ADLMIDI/lib/ADLMIDI.lib" 2>/dev/null || cp lib*ADLMIDI*.lib "$INSTALL_PREFIX/ADLMIDI/lib/ADLMIDI.lib"
    
    # Copy the headers
    cp ../include/adlmidi.h "$INSTALL_PREFIX/ADLMIDI/include/"
    
    echo "libADLMIDI build complete"
}

# Test cross-compilation setup
test_cross_compilation() {
    echo "=== Testing cross-compilation setup ==="
    
    # Use detected paths
    local sdk_include="${DETECTED_SDK_INCLUDE:-$WINSDK_BASE/sdk/include}"
    local sdk_lib="${DETECTED_SDK_LIB:-$WINSDK_BASE/sdk/lib}"
    local crt_include="${DETECTED_CRT_INCLUDE:-$WINSDK_BASE/crt/include}"
    local crt_lib="${DETECTED_CRT_LIB:-$WINSDK_BASE/crt/lib}"
    local sdk_version="${DETECTED_SDK_VERSION:-$WINSDK_VERSION}"
    
    # Create a simple test program
    cat > test_cross.c << 'EOF'
#include <windows.h>
#include <stdio.h>

int main() {
    printf("Hello from Windows cross-compilation!\n");
    return 0;
}
EOF
    
    echo "Compiling test program with detected paths..."
    echo "SDK Include: $sdk_include"
    echo "SDK Lib: $sdk_lib"
    echo "CRT Include: $crt_include"
    echo "CRT Lib: $crt_lib"
    echo "SDK Version: $sdk_version"
    
    # Build include flags
    local include_flags=()
    [[ -d "$crt_include" ]] && include_flags+=("-I" "$crt_include")
    
    # Try both versioned and flat structures for includes
    if [[ -d "$sdk_include/$sdk_version/um" ]]; then
        include_flags+=("-I" "$sdk_include/$sdk_version/um")
    elif [[ -d "$sdk_include/um" ]]; then
        include_flags+=("-I" "$sdk_include/um")
    fi
    
    if [[ -d "$sdk_include/$sdk_version/shared" ]]; then
        include_flags+=("-I" "$sdk_include/$sdk_version/shared")
    elif [[ -d "$sdk_include/shared" ]]; then
        include_flags+=("-I" "$sdk_include/shared")
    fi
    
    # Add UCRT include (xwin structure)
    [[ -d "$sdk_include/ucrt" ]] && include_flags+=("-I" "$sdk_include/ucrt")
    
    # Build library flags
    local lib_flags=()
    # Try xwin structure first (x86_64), then traditional (x64)
    if [[ -d "$crt_lib/x86_64" ]]; then
        lib_flags+=("-L" "$crt_lib/x86_64")
    elif [[ -d "$crt_lib/x64" ]]; then
        lib_flags+=("-L" "$crt_lib/x64")
    fi
    
    if [[ -d "$sdk_lib/um/x86_64" ]]; then
        lib_flags+=("-L" "$sdk_lib/um/x86_64")
    elif [[ -d "$sdk_lib/$sdk_version/um/x64" ]]; then
        lib_flags+=("-L" "$sdk_lib/$sdk_version/um/x64")
    fi
    
    # Add UCRT library path (xwin puts it in sdk/lib/ucrt)
    [[ -d "$sdk_lib/ucrt/x86_64" ]] && lib_flags+=("-L" "$sdk_lib/ucrt/x86_64")
    
    echo "Using include flags: ${include_flags[@]}"
    echo "Using library flags: ${lib_flags[@]}"
    
    clang --target=x86_64-pc-windows-msvc \
        -fuse-ld=lld \
        "${include_flags[@]}" \
        "${lib_flags[@]}" \
        test_cross.c -o test_cross.exe
    
    if [[ $? -eq 0 ]] && [[ -f "test_cross.exe" ]]; then
        echo "✓ Cross-compilation test successful!"
        echo "Generated: test_cross.exe ($(stat -c%s test_cross.exe) bytes)"
        rm -f test_cross.c test_cross.exe
        return 0
    else
        echo "✗ Cross-compilation test failed!"
        echo "Let's see what clang is complaining about..."
        
        # Try again with verbose output
        echo "Trying again with verbose output..."
        clang --target=x86_64-pc-windows-msvc \
            -fuse-ld=lld \
            -v \
            "${include_flags[@]}" \
            "${lib_flags[@]}" \
            test_cross.c -o test_cross.exe
        
        rm -f test_cross.c test_cross.exe
        return 1
    fi
}

# Setup Windows SDK (you'll need to get this separately)
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
        WINSDK_VERSION="$actual_sdk_version"
    fi
    
    # Export detected paths for use in toolchain
    export DETECTED_SDK_INCLUDE="$sdk_include_base"
    export DETECTED_SDK_LIB="$sdk_lib_base"
    export DETECTED_CRT_INCLUDE="$ucrt_include_base"
    export DETECTED_CRT_LIB="$ucrt_lib_base"
    export DETECTED_SDK_VERSION="$actual_sdk_version"
    
    # Verify critical paths exist with detected structure
    local critical_paths=()
    
    # For includes, try both versioned and non-versioned paths
    if [[ -n "$sdk_include_base" ]]; then
        if [[ -n "$actual_sdk_version" && -d "$sdk_include_base/$actual_sdk_version" ]]; then
            # Traditional Windows SDK structure
            critical_paths+=(
                "$sdk_include_base/$actual_sdk_version/um"
                "$sdk_include_base/$actual_sdk_version/shared"
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
        elif [[ -n "$actual_sdk_version" && -d "$sdk_lib_base/$actual_sdk_version/um/x64" ]]; then
            # Traditional structure
            critical_paths+=("$sdk_lib_base/$actual_sdk_version/um/x64")
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
            # But let's continue and see what we actually have
        else
            echo "✓ Found: $path"
        fi
    done
    
    # Check for essential libraries with detected paths
    local essential_libs=()
    
    # Try different library structures
    if [[ -n "$sdk_lib_base" ]]; then
        if [[ -d "$sdk_lib_base/um/x86_64" ]]; then
            # xwin structure
            essential_libs+=(
                "$sdk_lib_base/um/x86_64/kernel32.lib"
                "$sdk_lib_base/um/x86_64/user32.lib"
            )
        elif [[ -n "$actual_sdk_version" && -d "$sdk_lib_base/$actual_sdk_version/um/x64" ]]; then
            # Traditional structure
            essential_libs+=(
                "$sdk_lib_base/$actual_sdk_version/um/x64/kernel32.lib"
                "$sdk_lib_base/$actual_sdk_version/um/x64/user32.lib"
            )
        fi
    fi
    
    # Look for CRT libraries in different locations
    if [[ -n "$ucrt_lib_base" ]]; then
        if [[ -d "$ucrt_lib_base/x86_64" ]]; then
            # xwin structure - check for different CRT lib names
            for crt_name in libucrt.lib ucrt.lib msvcrt.lib libcmt.lib; do
                if [[ -f "$ucrt_lib_base/x86_64/$crt_name" ]]; then
                    essential_libs+=("$ucrt_lib_base/x86_64/$crt_name")
                    break
                fi
            done
        elif [[ -d "$ucrt_lib_base/x64" ]]; then
            # Traditional structure
            for crt_name in libucrt.lib ucrt.lib; do
                if [[ -f "$ucrt_lib_base/x64/$crt_name" ]]; then
                    essential_libs+=("$ucrt_lib_base/x64/$crt_name")
                    break
                fi
            done
        fi
    fi
    
    # Also check for UCRT in SDK lib directory (xwin puts it there)
    if [[ -n "$sdk_lib_base" && -d "$sdk_lib_base/ucrt/x86_64" ]]; then
        for crt_name in libucrt.lib ucrt.lib; do
            if [[ -f "$sdk_lib_base/ucrt/x86_64/$crt_name" ]]; then
                essential_libs+=("$sdk_lib_base/ucrt/x86_64/$crt_name")
                break
            fi
        done
    fi
    
    echo "Checking for essential libraries..."
    for lib in "${essential_libs[@]}"; do
        if [[ ! -f "$lib" ]]; then
            echo "⚠ Essential library missing: $lib"
            # Let's see what's actually in the directory
            echo "Contents of $(dirname "$lib"):"
            ls -la "$(dirname "$lib")" 2>/dev/null || echo "Directory doesn't exist"
        else
            echo "✓ Found: $lib"
        fi
    done
    
    echo "Windows SDK structure detection complete!"
    echo "Detected SDK Version: $actual_sdk_version"
    
    # Detect and export the actual library architectures used
    local detected_lib_arch=""
    if [[ -d "$ucrt_lib_base/x86_64" ]] || [[ -d "$sdk_lib_base/um/x86_64" ]]; then
        detected_lib_arch="x86_64"
    elif [[ -d "$ucrt_lib_base/x64" ]] || [[ -d "$sdk_lib_base/$actual_sdk_version/um/x64" ]]; then
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

# Main execution
case "$1" in
    "setup")
        setup_winsdk
        ;;
    "test")
        setup_winsdk
        test_cross_compilation
        ;;
    "zlib")
        setup_winsdk
        build_zlib
        ;;
    "libpng")
        setup_winsdk
        build_libpng
        ;;
    "adlmidi")
        setup_winsdk
        build_adlmidi
        ;;
    "all")
        setup_winsdk
        test_cross_compilation || exit 1
        build_zlib
        build_libpng
        build_adlmidi
        echo "=== All libraries built successfully ==="
        ;;
    *)
        echo "Usage: $0 {setup|test|zlib|libpng|adlmidi|all}"
        echo ""
        echo "  setup   - Check/setup Windows SDK"
        echo "  test    - Test cross-compilation setup"
        echo "  zlib    - Build zlib only" 
        echo "  libpng  - Build libpng only"
        echo "  adlmidi - Build libADLMIDI only"
        echo "  all     - Build all libraries"
        exit 1
        ;;
esac