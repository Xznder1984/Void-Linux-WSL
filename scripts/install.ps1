$DistroName = "VoidLinux"
$InstallPath = "D:\WSL\VoidLinux"
$RootFS = "rootfs\void-rootfs.tar.xz"

Write-Host "Installing Void Linux WSL..."

wsl --import $DistroName $InstallPath $RootFS

Write-Host "Installation complete!"
Write-Host "Run it with:"
Write-Host "wsl -d VoidLinux"