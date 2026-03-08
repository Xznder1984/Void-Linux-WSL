$DistroName = "VoidLinux"
$InstallDir = "D:\WSL\VoidLinux"
$RootFSUrl = "https://github.com/Xznder1984/Void-Linux-WSL/releases/latest/download/void-rootfs.tar.xz"

Write-Host "Installing Void Linux WSL..."

mkdir $InstallDir -ErrorAction Ignore

$RootFS = "$InstallDir\void-rootfs.tar.xz"

Write-Host "Downloading rootfs..."
Invoke-WebRequest $RootFSUrl -OutFile $RootFS

if (!(Test-Path $RootFS)) {
    Write-Host "Download failed!"
    exit
}

Write-Host "Importing into WSL..."
wsl --import $DistroName $InstallDir $RootFS

Write-Host "Installation complete!"
Write-Host "Run it with:"
Write-Host "wsl -d VoidLinux"
