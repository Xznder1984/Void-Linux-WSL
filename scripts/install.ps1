$DistroName = "VoidLinux"
$InstallDir = "D:\WSL\VoidLinux"
$RootFSUrl = "https://github.com/Xznder1984/Void-Linux-WSL/releases/latest/download/void-rootfs.tar.xz"

Write-Host "Installing Void Linux WSL..."

mkdir $InstallDir -ErrorAction Ignore

Write-Host "Downloading rootfs..."
Invoke-WebRequest $RootFSUrl -OutFile "$InstallDir\void-rootfs.tar.xz"

Write-Host "Importing into WSL..."
wsl --import $DistroName $InstallDir "$InstallDir\void-rootfs.tar.xz"

Write-Host "Installation complete!"
Write-Host "Run it with:"
Write-Host "wsl -d VoidLinux"
