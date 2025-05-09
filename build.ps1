# Build script for v64tng game engine

try {
    # Clean target
    if ($args[0] -eq "clean") {
        Write-Host "Cleaning build artifacts..." -ForegroundColor Yellow
        Remove-Item -Recurse -Force -Path "build" -ErrorAction SilentlyContinue
        Write-Host "Clean complete." -ForegroundColor Green
        exit 0
    }

    # Determine build type: release is default, debug if specified
    $buildType = "release"
    if ($args[0] -eq "debug") {
        $buildType = "debug"
        Write-Host "Debug build selected." -ForegroundColor Cyan
    }
    else {
        Write-Host "Release build selected." -ForegroundColor Cyan
    }

    if (-not (Test-Path "build")) {
        New-Item -ItemType Directory -Path "build"
    }

    # Compile resources if needed
    if ((-not (Test-Path "build/resource.res")) -or `
        ((Get-Item "resource.rc").LastWriteTime -gt (Get-Item "build/resource.res").LastWriteTime)) {
        Write-Host "Compiling/Recompiling resource file..." -ForegroundColor Cyan
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

    $sources = Get-ChildItem -Path "src" -Filter "*.cpp" | ForEach-Object { $_.FullName }
    $objects = $sources | ForEach-Object { "build\$($_.Split('\')[-1] -replace '\.cpp$', '.o')" }

    # Compiler flags based on build type
    if ($buildType -eq "debug") {
        $clangFlags = @(
            "-v",
            "-DUNICODE",
            "-D_UNICODE",
            "-std=c++23",
            "-O0",
            "-g",
            "-gcodeview",
            "-mssse3",
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
    }
    else {
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
    }

    # Compile source files in parallel with specific header dependency checking
    $jobs = @()
    foreach ($i in 0..($sources.Length - 1)) {
        $src = $sources[$i]
        $obj = $objects[$i]
        $baseName = [System.IO.Path]::GetFileNameWithoutExtension($src)
        $header = "E:\v64tng\include\$baseName.h"

        $objTime = if (Test-Path $obj) { (Get-Item $obj).LastWriteTime } else { [DateTime]::MinValue }
        $srcTime = (Get-Item $src).LastWriteTime
        $headerTime = if (Test-Path $header) { (Get-Item $header).LastWriteTime } else { [DateTime]::MinValue }

        if (-not (Test-Path $obj) -or $srcTime -gt $objTime -or $headerTime -gt $objTime) {
            $job = Start-Job -ScriptBlock {
                param($src, $obj, $clangFlags)
                Write-Host "Compiling $src to $obj..." -ForegroundColor Cyan
                clang++ -c $src -o $obj @clangFlags
                if ($LASTEXITCODE -ne 0) {
                    Write-Host "Compilation failed for $src!" -ForegroundColor Red
                    exit 1
                }
            } -ArgumentList $src, $obj, $clangFlags
            $jobs += $job
        }
        else {
            Write-Host "$obj is up to date." -ForegroundColor Green
        }
    }

    if ($jobs.Count -gt 0) {
        Wait-Job -Job $jobs
        foreach ($job in $jobs) {
            Receive-Job -Job $job
            if ($job.State -eq "Failed") {
                Write-Host "Compilation job failed!" -ForegroundColor Red
                exit 1
            }
        }
    }

    # Link
    Write-Host "Linking to v64tng.exe..." -ForegroundColor Cyan
    $commonLinkerArgs = @(
        "-fuse-ld=lld",
        "-o", "v64tng.exe"
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

    if ($buildType -eq "debug") {
        $linkerFlags = @("-Wl,/DEBUG:FULL", "-Wl,/PDB:v64tng.pdb")
    }
    else {
        $linkerFlags = @("-Xlinker", "/OPT:REF")
    }

    $clangLinkArgs = $linkerFlags + $commonLinkerArgs
    & clang++ @clangLinkArgs

    # Post-build steps
    if ($LASTEXITCODE -eq 0) {
        Write-Host "Build successful! Executable: v64tng.exe" -ForegroundColor Green
        if ($buildType -eq "debug") {
            $pdbSource = "v64tng.pdb"
            $pdbDestination = "C:\T7G\v64tng.pdb"
            if (Test-Path $pdbSource) {
                Move-Item -Path $pdbSource -Destination $pdbDestination -Force
                Write-Host "PDB file moved to $pdbDestination" -ForegroundColor Green
            }
            else {
                Write-Host "PDB file not found!" -ForegroundColor Yellow
            }
        }
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