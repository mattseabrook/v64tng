# bootstrap.ps1

param (
    [string]$buildType = "Release",  # Default to Release
    [string]$generator = "Ninja",    # Default to Ninja
    [string]$compiler = "clang++"    # Default to Clang
)

try {
    # Step 1: Install Chocolatey if not present
    if (-not (Get-Command choco -ErrorAction SilentlyContinue)) {
        Write-Host "Installing Chocolatey..." -ForegroundColor Cyan
        Set-ExecutionPolicy Bypass -Scope Process -Force
        Invoke-Expression ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))
    }

    # Step 2: Install tools if missing
    Write-Host "Checking and installing required tools..." -ForegroundColor Cyan
    if (-not (Get-Command cmake -ErrorAction SilentlyContinue)) { choco install -y cmake }
    if (-not (Get-Command ninja -ErrorAction SilentlyContinue)) { choco install -y ninja }
    if (-not (Get-Command git -ErrorAction SilentlyContinue)) { choco install -y git }
    if (-not (Get-Command clang++ -ErrorAction SilentlyContinue)) {
        Write-Host "Clang not found, installing via Chocolatey..." -ForegroundColor Yellow
        choco install -y llvm
    }

    # Step 3: Set up vcpkg
    if (-not (Test-Path "vcpkg")) {
        Write-Host "Cloning vcpkg..." -ForegroundColor Cyan
        git clone https://github.com/microsoft/vcpkg.git
        Write-Host "Bootstrapping vcpkg..." -ForegroundColor Cyan
        .\vcpkg\bootstrap-vcpkg.bat
    }

    # Step 4: Install dependencies
    Write-Host "Installing dependencies via vcpkg..." -ForegroundColor Cyan
    .\vcpkg\vcpkg install

    # Step 5: Configure with CMake
    Write-Host "Configuring project with CMake..." -ForegroundColor Cyan
    $cmakeArgs = @()
    if ($generator -eq "Ninja") {
        $cmakeArgs += "-DCMAKE_BUILD_TYPE=$buildType"
        $cmakeArgs += "-DCMAKE_CXX_COMPILER=$compiler"
    }
    cmake -B build -S . -G $generator -DCMAKE_TOOLCHAIN_FILE="${PWD}\vcpkg\scripts\buildsystems\vcpkg.cmake" @cmakeArgs
    if ($LASTEXITCODE -ne 0) { throw "CMake configuration failed" }

    # Step 6: Build the project
    Write-Host "Building project..." -ForegroundColor Cyan
    if ($generator -eq "Ninja") {
        cmake --build build
    }
    else {
        cmake --build build --config $buildType
    }
    if ($LASTEXITCODE -ne 0) { throw "Build failed" }

    # Step 7: Copy executable
    Write-Host "Copying executable to C:\T7G\v64tng.exe..." -ForegroundColor Cyan
    $exePath = if ($generator -eq "Ninja") { "build\v64tng.exe" } else { "build\$buildType\v64tng.exe" }
    if (Test-Path $exePath) {
        New-Item -Path "C:\T7G" -ItemType Directory -Force | Out-Null
        Copy-Item $exePath "C:\T7G\v64tng.exe" -Force
        Write-Host "Executable copied to C:\T7G\v64tng.exe" -ForegroundColor Green
    }
    else {
        Write-Host "Executable not found at $exePath" -ForegroundColor Red
    }
}
catch {
    Write-Host "Error: $_" -ForegroundColor Red
    exit 1
}
finally {
    Write-Host "Script completed." -ForegroundColor Green
}