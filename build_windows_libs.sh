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
    local sdk_include="${DETECTED_SDK_INCLUDE:-$WINSDK_BASE/sdk/include}"
    local sdk_lib="${DETECTED_SDK_LIB:-$WINSDK_BASE/sdk/lib}"
    local crt_include="${DETECTED_CRT_INCLUDE:-$WINSDK_BASE/crt/include}"
    local crt_lib="${DETECTED_CRT_LIB:-$WINSDK_BASE/crt/lib}"
    local sdk_version="${DETECTED_SDK_VERSION:-$WINSDK_VERSION}"
    
    # Build the actual include and lib flags as literal strings for CMake
    local cmake_include_flags=""
    [[ -d "$crt_include" ]] && cmake_include_flags+="-imsvc ${crt_include} "
    [[ -d "$sdk_include/$sdk_version/um" ]] && cmake_include_flags+="-imsvc ${sdk_include}/${sdk_version}/um "
    [[ -d "$sdk_include/$sdk_version/shared" ]] && cmake_include_flags+="-imsvc ${sdk_include}/${sdk_version}/shared "
    [[ -d "$sdk_include/$sdk_version/ucrt" ]] && cmake_include_flags+="-imsvc ${sdk_include}/${sdk_version}/ucrt "
    
    local cmake_lib_flags=""
    [[ -d "$crt_lib/x86_64" ]] && cmake_lib_flags+="-libpath:${crt_lib}/x86_64 "
    [[ -d "$sdk_lib/um/x86_64" ]] && cmake_lib_flags+="-libpath:${sdk_lib}/um/x86_64 "
    [[ -d "$sdk_lib/ucrt/x86_64" ]] && cmake_lib_flags+="-libpath:${sdk_lib}/ucrt/x86_64 "
    
    local cmake_windows_libs="${cmake_lib_flags}"
    [[ -f "$sdk_lib/um/x86_64/kernel32.lib" ]] && cmake_windows_libs+="${sdk_lib}/um/x86_64/kernel32.lib "
    [[ -f "$sdk_lib/um/x86_64/user32.lib" ]] && cmake_windows_libs+="${sdk_lib}/um/x86_64/user32.lib "
    [[ -f "$crt_lib/x86_64/libcmt.lib" ]] && cmake_windows_libs+="${crt_lib}/x86_64/libcmt.lib "
    [[ -f "$sdk_lib/ucrt/x86_64/libucrt.lib" ]] && cmake_windows_libs+="${sdk_lib}/ucrt/x86_64/libucrt.lib "
    
    cat > windows-cross.cmake << EOF
set(CMAKE_SYSTEM_NAME Windows)
set(CMAKE_SYSTEM_PROCESSOR AMD64)

set(CMAKE_C_COMPILER clang-cl)
set(CMAKE_CXX_COMPILER clang-cl)

set(CMAKE_C_COMPILER_TARGET x86_64-pc-windows-msvc)
set(CMAKE_CXX_COMPILER_TARGET x86_64-pc-windows-msvc)

set(CMAKE_C_COMPILER_WORKS 1)
set(CMAKE_CXX_COMPILER_WORKS 1)
set(CMAKE_DETERMINE_C_ABI_COMPILED 1)
set(CMAKE_DETERMINE_CXX_ABI_COMPILED 1)

set(CMAKE_AR llvm-lib)
set(CMAKE_C_ARCHIVE_CREATE "<CMAKE_AR> /OUT:<TARGET> <OBJECTS>")
set(CMAKE_C_ARCHIVE_FINISH "")
set(CMAKE_CXX_ARCHIVE_CREATE "<CMAKE_AR> /OUT:<TARGET> <OBJECTS>")
set(CMAKE_CXX_ARCHIVE_FINISH "")

set(CMAKE_C_FLAGS_INIT "-fuse-ld=lld-link $cmake_include_flags -D_MT -D_WIN32 -D_WIN64 -fms-compatibility -fms-compatibility-version=19.37")
set(CMAKE_CXX_FLAGS_INIT "-fuse-ld=lld-link $cmake_include_flags -D_MT -D_WIN32 -D_WIN64 -fms-compatibility -fms-compatibility-version=19.37")

set(CMAKE_C_FLAGS_RELEASE_INIT "-O2 -DNDEBUG -D_MT")
set(CMAKE_CXX_FLAGS_RELEASE_INIT "-O2 -DNDEBUG -D_MT")
set(CMAKE_C_FLAGS_DEBUG_INIT "-O0 -D_MT")
set(CMAKE_CXX_FLAGS_DEBUG_INIT "-O0 -D_MT")

set(CMAKE_MSVC_RUNTIME_LIBRARY "MultiThreaded")
set(CMAKE_C_FLAGS_DEBUG "")
set(CMAKE_CXX_FLAGS_DEBUG "")

set(CMAKE_EXE_LINKER_FLAGS_INIT "$cmake_windows_libs -DEFAULTLIB:libcmt.lib -NODEFAULTLIB:msvcrt.lib")
set(CMAKE_SHARED_LINKER_FLAGS_INIT "$cmake_windows_libs -DEFAULTLIB:libcmt.lib -NODEFAULTLIB:msvcrt.lib")
set(CMAKE_MODULE_LINKER_FLAGS_INIT "$cmake_windows_libs -DEFAULTLIB:libcmt.lib -NODEFAULTLIB:msvcrt.lib")

set(CMAKE_C_STANDARD_LIBRARIES "$cmake_windows_libs")
set(CMAKE_CXX_STANDARD_LIBRARIES "$cmake_windows_libs")

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
    
    # Set environment variables for clang-cl to find headers
    local sdk_include="${DETECTED_SDK_INCLUDE:-$WINSDK_BASE/sdk/include}"
    local sdk_lib="${DETECTED_SDK_LIB:-$WINSDK_BASE/sdk/lib}"
    local crt_include="${DETECTED_CRT_INCLUDE:-$WINSDK_BASE/crt/include}"
    local crt_lib="${DETECTED_CRT_LIB:-$WINSDK_BASE/crt/lib}"
    local sdk_version="${DETECTED_SDK_VERSION:-$WINSDK_VERSION}"
    
    # Build include path for INCLUDE environment variable
    local include_paths=""
    [[ -d "$crt_include" ]] && include_paths+="$crt_include;"
    [[ -d "$sdk_include/$sdk_version/um" ]] && include_paths+="$sdk_include/$sdk_version/um;"
    [[ -d "$sdk_include/$sdk_version/shared" ]] && include_paths+="$sdk_include/$sdk_version/shared;"
    [[ -d "$sdk_include/$sdk_version/ucrt" ]] && include_paths+="$sdk_include/$sdk_version/ucrt;"
    
    # Build lib path for LIB environment variable
    local lib_paths=""
    [[ -d "$crt_lib/x86_64" ]] && lib_paths+="$crt_lib/x86_64;"
    [[ -d "$sdk_lib/um/x86_64" ]] && lib_paths+="$sdk_lib/um/x86_64;"
    [[ -d "$sdk_lib/ucrt/x86_64" ]] && lib_paths+="$sdk_lib/ucrt/x86_64;"
    
    export INCLUDE="$include_paths"
    export LIB="$lib_paths"
    
    echo "Set INCLUDE=$INCLUDE"
    echo "Set LIB=$LIB"
    
    create_toolchain_file
    
    cmake .. \
        -DCMAKE_TOOLCHAIN_FILE=windows-cross.cmake \
        -DCMAKE_BUILD_TYPE=Release \
        -DCMAKE_INSTALL_PREFIX="$INSTALL_PREFIX/zlib" \
        -DBUILD_SHARED_LIBS=OFF \
        -DZLIB_BUILD_EXAMPLES=OFF \
        -DCMAKE_POSITION_INDEPENDENT_CODE=OFF \
        -DCMAKE_MSVC_RUNTIME_LIBRARY=MultiThreaded \
        -DZLIB_WINAPI=OFF \
        -DHAVE_SYS_TYPES_H=OFF \
        -DHAVE_UNISTD_H=OFF \
        -DHAVE_STDARG_H=ON \
        -DCMAKE_C_FLAGS="-DZLIB_STATIC -D_CRT_DECLARE_NONSTDC_NAMES=0 -DWIN32_LEAN_AND_MEAN"
    
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
    
    # Set environment variables for clang-cl to find headers
    local sdk_include="${DETECTED_SDK_INCLUDE:-$WINSDK_BASE/sdk/include}"
    local sdk_lib="${DETECTED_SDK_LIB:-$WINSDK_BASE/sdk/lib}"
    local crt_include="${DETECTED_CRT_INCLUDE:-$WINSDK_BASE/crt/include}"
    local crt_lib="${DETECTED_CRT_LIB:-$WINSDK_BASE/crt/lib}"
    local sdk_version="${DETECTED_SDK_VERSION:-$WINSDK_VERSION}"
    
    # Build include path for INCLUDE environment variable
    local include_paths=""
    [[ -d "$crt_include" ]] && include_paths+="$crt_include;"
    [[ -d "$sdk_include/$sdk_version/um" ]] && include_paths+="$sdk_include/$sdk_version/um;"
    [[ -d "$sdk_include/$sdk_version/shared" ]] && include_paths+="$sdk_include/$sdk_version/shared;"
    [[ -d "$sdk_include/$sdk_version/ucrt" ]] && include_paths+="$sdk_include/$sdk_version/ucrt;"
    
    # Build lib path for LIB environment variable
    local lib_paths=""
    [[ -d "$crt_lib/x86_64" ]] && lib_paths+="$crt_lib/x86_64;"
    [[ -d "$sdk_lib/um/x86_64" ]] && lib_paths+="$sdk_lib/um/x86_64;"
    [[ -d "$sdk_lib/ucrt/x86_64" ]] && lib_paths+="$sdk_lib/ucrt/x86_64;"
    
    export INCLUDE="$include_paths"
    export LIB="$lib_paths"
    
    echo "Set INCLUDE=$INCLUDE"
    echo "Set LIB=$LIB"
    
    create_toolchain_file
    
    cmake .. \
        -DCMAKE_TOOLCHAIN_FILE=windows-cross.cmake \
        -DCMAKE_BUILD_TYPE=Release \
        -DCMAKE_INSTALL_PREFIX="$INSTALL_PREFIX/libpng" \
        -DBUILD_SHARED_LIBS=OFF \
        -DPNG_STATIC=ON \
        -DPNG_SHARED=OFF \
        -DPNG_TESTS=OFF \
        -DPNG_ARM_NEON=off \
        -DPNG_INTEL_SSE=off \
        -DPNG_MIPS_MSA=off \
        -DPNG_POWERPC_VSX=off \
        -DZLIB_ROOT="$INSTALL_PREFIX/zlib" \
        -DCMAKE_POSITION_INDEPENDENT_CODE=OFF \
        -DCMAKE_MSVC_RUNTIME_LIBRARY=MultiThreaded \
        -DPNG_NO_DLL=1 \
        -DCMAKE_C_FLAGS="-DPNG_STATIC -D_CRT_DECLARE_NONSTDC_NAMES=0 -DWIN32_LEAN_AND_MEAN"

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
  -DCMAKE_INSTALL_PREFIX="$INSTALL_PREFIX/ADLMIDI" \
  -DBUILD_SHARED_LIBS=OFF \
  -DlibADLMIDI_STATIC=ON \
  -DlibADLMIDI_SHARED=OFF \
  -DWITH_UNIT_TESTS=OFF -DWITH_MIDIPLAY=OFF -DWITH_VLC_PLUGIN=OFF \
  -DWITH_OLD_UTILS=OFF -DCMAKE_BUILD_TYPE=Release \
  -DCMAKE_C_FLAGS_RELEASE="-D_MT -DNDEBUG -O2" \
  -DCMAKE_CXX_FLAGS_RELEASE="-D_MT -DNDEBUG -O2" \
  -DCMAKE_C_FLAGS_DEBUG="-D_MT -O0 -g" \
  -DCMAKE_CXX_FLAGS_DEBUG="-D_MT -O0 -g"
    
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
    
    # Build include flags (combined as single strings)
    local include_flags=()
    [[ -d "$crt_include" ]] && include_flags+=("-I${crt_include}")
    [[ -d "$sdk_include/$sdk_version/um" ]] && include_flags+=("-I${sdk_include}/${sdk_version}/um")
    [[ -d "$sdk_include/$sdk_version/shared" ]] && include_flags+=("-I${sdk_include}/${sdk_version}/shared")
    [[ -d "$sdk_include/$sdk_version/ucrt" ]] && include_flags+=("-I${sdk_include}/${sdk_version}/ucrt")
    [[ -d "$sdk_include/ucrt" ]] && include_flags+=("-I${sdk_include}/ucrt")
    
    # Build library flags (combined as single strings)
    local lib_flags=()
    [[ -d "$crt_lib/x86_64" ]] && lib_flags+=("-L${crt_lib}/x86_64")
    [[ -d "$sdk_lib/um/x86_64" ]] && lib_flags+=("-L${sdk_lib}/um/x86_64")
    [[ -d "$sdk_lib/ucrt/x86_64" ]] && lib_flags+=("-L${sdk_lib}/ucrt/x86_64")
    
    echo "Using include flags: ${include_flags[@]}"
    echo "Using library flags: ${lib_flags[@]}"
    
    # Convert flags to Windows format
    local win_include_flags=()
    local win_lib_flags=()
    for flag in "${include_flags[@]}"; do
        win_include_flags+=("/I${flag#-I}")
    done
    for flag in "${lib_flags[@]}"; do
        win_lib_flags+=("/libpath:${flag#-L}")
    done

    echo "Converted include flags: ${win_include_flags[@]}"
    echo "Converted library flags: ${win_lib_flags[@]}"

    # Explicit library paths for static linking
    local kernel32_lib="$sdk_lib/um/x86_64/kernel32.lib"
    local user32_lib="$sdk_lib/um/x86_64/user32.lib"
    local libucrt_lib="$sdk_lib/ucrt/x86_64/libucrt.lib"
    local libcmt_lib="$crt_lib/x86_64/libcmt.lib"

    clang-cl --target=x86_64-pc-windows-msvc \
        -fuse-ld=lld-link \
        /MT \
        "${win_include_flags[@]}" \
        test_cross.c -o test_cross.exe \
        /link \
        "${win_lib_flags[@]}" \
        "$kernel32_lib" \
        "$user32_lib" \
        "$libucrt_lib" \
        "$libcmt_lib" \
        /NODEFAULTLIB:msvcrt.lib
    
    if [[ $? -eq 0 ]] && [[ -f "test_cross.exe" ]]; then
        echo "✓ Cross-compilation test successful!"
        echo "Generated: test_cross.exe ($(stat -c%s test_cross.exe) bytes)"
        rm -f test_cross.c test_cross.exe
        return 0
    else
        echo "✗ Cross-compilation test failed!"
        echo "Trying again with verbose output..."
        clang-cl --target=x86_64-pc-windows-msvc \
            -fuse-ld=lld-link \
            -v \
            /MT \
            "${win_include_flags[@]}" \
            test_cross.c -o test_cross.exe \
            /link \
            "${win_lib_flags[@]}" \
            "$kernel32_lib" \
            "$user32_lib" \
            "$libucrt_lib" \
            "$libcmt_lib" \
            /NODEFAULTLIB:msvcrt.lib
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