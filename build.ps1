# Build script for v64tng game engine

try {
    # Clean target
    if ($args[0] -eq "clean") {
        Write-Host "Cleaning build artifacts..." -ForegroundColor Yellow

        # Remove all object files in build dir
        if (Test-Path "build") {
            Get-ChildItem -Path "build" -Filter *.o -File -Recurse | Remove-Item -Force -ErrorAction SilentlyContinue
        }

        # Remove executable and PDB in both working and build dirs
        $artifacts = @("v64tng.exe", "v64tng.pdb", "build\v64tng.exe", "build\v64tng.pdb")
        foreach ($a in $artifacts) {
            if (Test-Path $a) { Remove-Item $a -Force -ErrorAction SilentlyContinue }
        }

        # Remove resource files
        if (Test-Path "build\resource.res") { Remove-Item "build\resource.res" -Force -ErrorAction SilentlyContinue }

        # Remove build dir itself
        if (Test-Path "build") {
            Remove-Item -Recurse -Force -Path "build" -ErrorAction SilentlyContinue
        }

        Write-Host "Clean complete." -ForegroundColor Green
        exit 0
    }

    # Determine build type
    $buildType = "Release"
    if ($args[0] -eq "debug") {
        $buildType = "debug"
        Write-Host "Debug build selected." -ForegroundColor Cyan
    }
    else {
        Write-Host "Release build selected." -ForegroundColor Cyan
    }

    # Create build directory
    $buildDir = "build"
    if (-not (Test-Path $buildDir)) {
        New-Item -ItemType Directory -Path $buildDir | Out-Null
        Write-Host "Created build directory." -ForegroundColor Green
    }

    # Compile resources
    $resourceRes = "$buildDir/resource.res"
    $resourceRc = "resource.rc"
    if ((Test-Path $resourceRc) -and ((-not (Test-Path $resourceRes)) -or 
            ((Get-Item $resourceRc).LastWriteTime -gt (Get-Item $resourceRes).LastWriteTime))) {
        Write-Host "Compiling/Recompiling resource file..." -ForegroundColor Cyan
        & "C:\Program Files (x86)\Windows Kits\10\bin\10.0.26100.0\x64\rc.exe" `
            /I "C:\Program Files (x86)\Windows Kits\10\Include\10.0.26100.0\um" `
            /I "C:\Program Files (x86)\Windows Kits\10\Include\10.0.26100.0\shared" `
            /I "C:\Program Files (x86)\Windows Kits\10\Include\10.0.26100.0\ucrt" `
            /fo $resourceRes $resourceRc
        if ($LASTEXITCODE -ne 0) {
            Write-Host "Resource compilation failed!" -ForegroundColor Red
            exit 1
        }
    }

    # Get and sort sources
    $sources = Get-ChildItem -Path "src" -Filter "*.cpp" -File | 
    Sort-Object Name | 
    ForEach-Object { $_.FullName }
    
    Write-Host "Found $(($sources).Length) source files to process:" -ForegroundColor Yellow
    foreach ($src in $sources) {
        Write-Host "  - $(Split-Path $src -Leaf)" -ForegroundColor Gray
    }

    # Generate object paths
    $objects = $sources | ForEach-Object { 
        $objName = [System.IO.Path]::GetFileNameWithoutExtension($_) + ".o"
        Join-Path $buildDir $objName
    }

    # Compiler flags
    $commonIncludes = @(
        "-I", "$PSScriptRoot/include",
        "-I", "C:\lib\libADLMIDI\include",
        "-I", "C:\VulkanSDK\1.4.313.2\Include",
        "-I", "C:\lib\zlib-1.3.1",
        "-I", "C:\lib\lpng1650",
        "-I", "C:\lib\lpng1650\build"
    )

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
            "-Wall",
            "-Wextra",
            "-Wpedantic",
            "-Wshadow",
            "-Wnon-virtual-dtor",
            "-Wold-style-cast",
            "-Wcast-align",
            "-Wunused",
            "-Woverloaded-virtual"
        ) + $commonIncludes
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
            "-Wall",
            "-Wextra",
            "-Wpedantic",
            "-Wshadow",
            "-Wnon-virtual-dtor",
            "-Wold-style-cast",
            "-Wcast-align",
            "-Wunused",
            "-Woverloaded-virtual"
        ) + $commonIncludes
    }

    # Function to get dependencies from .d file
    function Get-Dependencies {
        param (
            [string]$depFile
        )
        if (Test-Path $depFile) {
            $content = Get-Content $depFile -Raw
            # Remove the target part and split by spaces
            $deps = $content -replace '^[^:]+:\s*', '' -split '\s+' | Where-Object { $_ }
            return $deps
        }
        return @()
    }

    # Track successfully compiled objects
    $compiledObjects = @()
    $startTime = Get-Date
    $totalFiles = $sources.Count
    $completedFiles = 0

    # Compile each source file
    for ($i = 0; $i -lt $sources.Length; $i++) {
        $src = $sources[$i]
        $obj = $objects[$i]
        $baseName = [System.IO.Path]::GetFileNameWithoutExtension($src)
        $depFile = Join-Path $buildDir "$baseName.d"
        
        # Show progress
        $completedFiles++
        $fileNumber = "[$completedFiles/$totalFiles]"
        Write-Host "Processing $fileNumber $(Split-Path $src -Leaf)..." -ForegroundColor Yellow
        
        # Check if we need to compile
        $needsCompile = $false
        
        if (-not (Test-Path $obj -PathType Leaf)) {
            $needsCompile = $true
            Write-Host "  Object file does not exist" -ForegroundColor Yellow
        }
        else {
            $objInfo = Get-Item $obj
            $srcInfo = Get-Item $src
            
            # Check source file
            if ($srcInfo.LastWriteTime -gt $objInfo.LastWriteTime) {
                $needsCompile = $true
                Write-Host "  Source is newer than object file" -ForegroundColor Yellow
            }
            
            # Check dependencies from .d file
            if (Test-Path $depFile -PathType Leaf) {
                $deps = Get-Dependencies -depFile $depFile
                foreach ($dep in $deps) {
                    if (Test-Path $dep -PathType Leaf) {
                        $depInfo = Get-Item $dep
                        if ($depInfo.LastWriteTime -gt $objInfo.LastWriteTime) {
                            $needsCompile = $true
                            Write-Host "  Dependency $dep is newer than object file" -ForegroundColor Yellow
                            break
                        }
                    }
                }
            }
            
            # Check file size
            if ($objInfo.Length -eq 0) {
                $needsCompile = $true
                Write-Host "  Object file has zero size" -ForegroundColor Red
            }
        }
        
        if ($needsCompile) {
            # Clean up any existing broken object file
            if (Test-Path $obj) {
                Remove-Item $obj -Force -ErrorAction SilentlyContinue
            }
            
            Write-Host "  Compiling $(Split-Path $src -Leaf)..." -ForegroundColor Cyan
            & clang++ -c $src -o $obj @clangFlags -MMD
            
            if ($LASTEXITCODE -ne 0) {
                Write-Host "  Compilation failed for $(Split-Path $src -Leaf)!" -ForegroundColor Red
                exit 1
            }
            
            if (-not (Test-Path $obj -PathType Leaf)) {
                Write-Host "  ERROR: Object file wasn't created after compilation!" -ForegroundColor Red
                exit 1
            }
            
            $objInfo = Get-Item $obj
            Write-Host "  Compiled $(Split-Path $src -Leaf) - Size: $($objInfo.Length) bytes" -ForegroundColor Green
        }
        else {
            Write-Host "  Object file is up to date - Size: $($objInfo.Length) bytes" -ForegroundColor Green
        }
        
        $compiledObjects += $obj
    }
    
    # Calculate compilation time
    $endTime = Get-Date
    $duration = $endTime - $startTime
    Write-Host "Compilation completed in $($duration.TotalSeconds.ToString("0.00")) seconds." -ForegroundColor Green
    
    # Verify all object files exist before linking
    Write-Host "Verifying all object files before linking..." -ForegroundColor Cyan
    $missingObjects = @()
    
    foreach ($obj in $objects) {
        if (-not (Test-Path $obj -PathType Leaf)) {
            $missingObjects += $obj
        }
    }
    
    if ($missingObjects.Count -gt 0) {
        Write-Host "ERROR: The following object files are missing before linking:" -ForegroundColor Red
        foreach ($missing in $missingObjects) {
            Write-Host "  - $missing" -ForegroundColor Red
        }
        exit 1
    }
    
    # All objects confirmed to exist
    Write-Host "All object files verified. Proceeding to link..." -ForegroundColor Green
    
    # Link executable
    Write-Host "Linking to v64tng.exe..." -ForegroundColor Cyan
    $linkArgs = @(
        "-fuse-ld=lld",
        "-o", "v64tng.exe"
    ) + $objects
    
    # Add resource file if it exists
    if (Test-Path $resourceRes -PathType Leaf) {
        $linkArgs += $resourceRes
    }
    
    # Add remaining link arguments
    $linkArgs += @(
        "-L", "C:\lib\zlib-1.3.1\build_release\Release",
        "-L", "C:\lib\lpng1650\build",
        "-L", "C:\VulkanSDK\1.4.313.2\Lib",
        "-L", "C:\lib\libADLMIDI\build_release\Release",
        "-l", "zlibstatic",
        "-l", "libpng16_static",
        "-l", "vulkan-1",
        "-l", "ADLMIDI",
        "-l", "user32",
        "-l", "gdi32",
        "-l", "shlwapi",
        "-l", "shell32",
        "-l", "d2d1",
        "-l", "ole32",
        "-l", "uuid",
        "-l", "winmm",
        "-Xlinker", "/SUBSYSTEM:WINDOWS"
    )

    if ($buildType -eq "debug") {
        $outExe = "v64tng-debug.exe"
        $outPdb = "v64tng-debug.pdb"
        $linkArgs += @("-Wl,/DEBUG:FULL", "-Wl,/PDB:$outPdb")
    }
    else {
        $outExe = "v64tng.exe"
        $outPdb = "v64tng.pdb"
        $linkArgs += @("-Xlinker", "/OPT:REF")
    }

    & clang++ @linkArgs "-o" $outExe

    # Handle post-build
    if ($LASTEXITCODE -eq 0) {
        Write-Host "Build successful! Executable: $outExe" -ForegroundColor Green

        $targetDir = "C:\T7G"

        # Always nuke whatever exists first
        @(
            "$targetDir\v64tng.exe",
            "$targetDir\v64tng.pdb",
            "$targetDir\v64tng-debug.exe",
            "$targetDir\v64tng-debug.pdb"
        ) | ForEach-Object { if (Test-Path $_) { Remove-Item $_ -Force } }

        # Copy the freshly built binaries
        if ($buildType -eq "debug") {
            Move-Item -Path "v64tng-debug.exe" -Destination "$targetDir\v64tng-debug.exe" -Force
            if (Test-Path "v64tng-debug.pdb") {
                Move-Item -Path "v64tng-debug.pdb" -Destination "$targetDir\v64tng-debug.pdb" -Force
            }
        }
        else {
            Move-Item -Path "v64tng.exe" -Destination "$targetDir\v64tng.exe" -Force
            # Release builds may or may not emit a PDB depending on flags; ignore if absent
        }
    }
    else {
        Write-Host "Build failed!" -ForegroundColor Red
        exit 1
    }
}
catch {
    Write-Host "Error occurred: $_" -ForegroundColor Red
    Write-Host "Stack trace: $($_.ScriptStackTrace)" -ForegroundColor Red
    exit 1
}
finally {
    Write-Host "Build script completed." -ForegroundColor Green
}