# Build script for v64tng game engine

Start-Transcript -Path "build.log" -Append

try {
    if ($args[0] -eq "clean") {
        Write-Host "Cleaning build artifacts..." -ForegroundColor Yellow
        Remove-Item -Recurse -Force -Path "build" -ErrorAction SilentlyContinue
        Write-Host "Clean complete." -ForegroundColor Green
        exit 0
    }

    if (-not (Test-Path "build")) {
        New-Item -ItemType Directory -Path "build"
    }

    if (-not (Test-Path "build/resource.res")) {
        Write-Host "Compiling resource file..." -ForegroundColor Cyan
        & "C:\Program Files (x86)\Windows Kits\10\bin\10.0.26100.0\x64\rc.exe" `
            /I "C:\Program Files (x86)\Windows Kits\10\Include\10.0.26100.0\um" `
            /I "C:\Program Files (x86)\Windows Kits\10\Include\10.0.26100.0\shared" `
            /I "C:\Program Files (x86)\Windows Kits\10\Include\10.0.26100.0\ucrt" `
            /fo "build/resource.res" resource.rc
        if ($LASTEXITCODE -ne 0) {
            Write-Host "Resource compilation failed!" -ForegroundColor Red
            exit 1
        }
    }
    else {
        Write-Host "Resource file already exists, skipping compilation." -ForegroundColor Green
    }

    $sources = Get-ChildItem -Path "src" -Filter "*.cpp" | ForEach-Object { $_.FullName }
    $objects = $sources | ForEach-Object { "build\$($_.Split('\')[-1] -replace '\.cpp$', '.o')" }

    $clangFlags = @(
        "-v",
        "-DUNICODE",
        "-D_UNICODE",
        "-std=c++23",
        "-O3",
        "-march=native",
        "-flto=thin",
        "-fno-rtti",
        "-m64",
        "-Wall",
        "-Wextra",
        "-Wpedantic",
        "-Wshadow",
        "-Wnon-virtual-dtor",
        "-Wold-style-cast",
        "-Wcast-align",
        "-Wunused",
        "-Woverloaded-virtual",
        "-I", "E:\v64tng\include",
        "-I", "C:\lib\libADLMIDI\include",
        "-I", "C:\VulkanSDK\1.3.296.0\Include",
        "-I", "C:\lib\zlib-1.3.1",
        "-I", "C:\lib\lpng1644",
        "-I", "C:\lib\lpng1644\build_release"
    )

    foreach ($i in 0..($sources.Length - 1)) {
        $src = $sources[$i]
        $obj = $objects[$i]
        if (-not (Test-Path $obj) -or (Get-Item $src).LastWriteTime -gt (Get-Item $obj).LastWriteTime) {
            Write-Host "Compiling $src to $obj..." -ForegroundColor Cyan
            clang++ -c $src -o $obj @clangFlags
            if ($LASTEXITCODE -ne 0) {
                Write-Host "Compilation failed for $src!" -ForegroundColor Red
                exit 1
            }
        }
        else {
            Write-Host "$obj is up to date." -ForegroundColor Green
        }
    }

    Write-Host "Linking to v64tng.exe..." -ForegroundColor Cyan
    $linkerFlags = "-Wl,-s,--gc-sections"
    $clangLinkArgs = @(
        "-fuse-ld=lld",
        "-Wl,--gc-sections",
        "-Xlinker", "/OPT:REF",
        "-o",
        "v64tng.exe"
    ) + $objects + @(
        "build/resource.res",
        "-L", "C:\lib\zlib-1.3.1\build_release\Release",
        "-L", "C:\lib\lpng1644\build_release\Release",
        "-L", "C:\VulkanSDK\1.3.296.0\Lib",
        "-L", "C:\lib\libADLMIDI\build_release\Release",
        "-l", "zlibstatic",
        "-l", "libpng16_static",
        "-l", "vulkan-1",
        "-l", "ADLMIDI",
        "-l", "user32",
        "-l", "gdi32",
        "-l", "shell32",
        "-l", "d2d1",
        "-l", "ole32",
        "-l", "uuid",
        "-Xlinker", "/SUBSYSTEM:WINDOWS"
    )

    & clang++ @clangLinkArgs

    if ($LASTEXITCODE -eq 0) {
        Write-Host "Build successful! Executable: v64tng.exe" -ForegroundColor Green
        $destination = "C:\T7G\v64tng.exe"
        if (Test-Path $destination) {
            Remove-Item $destination -Force
        }
        Move-Item -Path "v64tng.exe" -Destination $destination
        Write-Host "Executable moved to $destination" -ForegroundColor Green
    }
    else {
        Write-Host "Build failed!" -ForegroundColor Red
    }
}
finally {
}

Stop-Transcript