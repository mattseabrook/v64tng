# Build script for v64tng game engine

# Start logging to build.log (append mode to keep history)
Start-Transcript -Path "build.log" -Append

try {
    # Step 1: Compile the resource file
    Write-Host "Compiling resource file..." -ForegroundColor Cyan
    & "C:\Program Files (x86)\Windows Kits\10\bin\10.0.26100.0\x64\rc.exe" `
        /I "C:\Program Files (x86)\Windows Kits\10\Include\10.0.26100.0\um" `
        /I "C:\Program Files (x86)\Windows Kits\10\Include\10.0.26100.0\shared" `
        /I "C:\Program Files (x86)\Windows Kits\10\Include\10.0.26100.0\ucrt" `
        /fo resource.res resource.rc
    if ($LASTEXITCODE -ne 0) {
        Write-Host "Resource compilation failed!" -ForegroundColor Red
        exit 1
    }

    # Step 2: Compile and link with clang++ (extremely verbose)
    Write-Host "Compiling and linking with clang++..." -ForegroundColor Cyan
    clang++ `
        -v `
        -DUNICODE `
        -D_UNICODE `
        -std=c++23 `
        -O3 `
        -march=native `
        -flto `
        -fno-rtti `
        -fuse-ld=lld `
        -m64 `
        -Wall `
        -Wextra `
        -Wpedantic `
        -Wshadow `
        -Wnon-virtual-dtor `
        -Wold-style-cast `
        -Wcast-align `
        -Wunused `
        -Woverloaded-virtual `
        -IE:\v64tng\include `
        -IC:\lib\libADLMIDI\include `
        -IC:\VulkanSDK\1.3.296.0\Include `
        -IC:\lib\zlib-1.3.1 `
        -IC:\lib\lpng1644 `
        -IC:\lib\lpng1644\build_release `
        -o v64tng.exe `
        src\bitmap.cpp `
        src\config.cpp `
        src\d2d.cpp `
        src\delta.cpp `
        src\extract.cpp `
        src\fh.cpp `
        src\game.cpp `
        src\gjd.cpp `
        src\lzss.cpp `
        src\main.cpp `
        src\rl.cpp `
        src\vdx.cpp `
        src\vulkan.cpp `
        src\window.cpp `
        src\music.cpp `
        resource.res `
        -LC:\lib\zlib-1.3.1\build_release\Release `
        -LC:\lib\lpng1644\build_release\Release `
        -LC:\VulkanSDK\1.3.296.0\Lib `
        -LC:\lib\libADLMIDI\build_release\Release `
        -lzlibstatic `
        -llibpng16_static `
        -lvulkan-1 `
        -lADLMIDI `
        -luser32 `
        -lgdi32 `
        -lshell32 `
        -ld2d1 `
        -lole32 `
        -luuid `
        -Xlinker /SUBSYSTEM:WINDOWS

    # Step 3: Check build result
    if ($LASTEXITCODE -eq 0) {
        Write-Host "Build successful! Executable: v64tng.exe" -ForegroundColor Green
    } else {
        Write-Host "Build failed!" -ForegroundColor Red
    }
} finally {
    # Cleanup: Remove all *.res files
    Write-Host "Running cleanup..." -ForegroundColor Yellow
    Get-ChildItem -Path "*.res" -File | ForEach-Object {
        Remove-Item $_.FullName
        Write-Host "Deleted: $($_.Name)" -ForegroundColor Yellow
    }
}

# Stop logging
Stop-Transcript