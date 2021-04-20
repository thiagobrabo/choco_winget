$chocolateyAppList = 
"7zip, 
advanced-ip-scanner, 
autohotkey, 
azure-data-studio, 
chocolateygui, 
curl, 
discord, 
everything, 
firefox, 
adblockplus-firefox, 
gimp, 
git, 
google-backup-and-sync, 
headset, 
inkscape, 
keepassxc, 
microsoft-windows-terminal, 
mremoteng, 
notion, 
nmap, 
nxlog, 
obs-studio, 
powertoys, 
postman, 
putty, 
redis-desktop-manager, 
robo3t, 
rufus, 
slack, 
terminals, 
termius, 
vim, 
virtualbox, 
vlc, 
vscode, 
wget, 
wsl, 
wsl2, 
winlogbeat, 
winscp.install, 
wireshark, 
zoom, 
zap, 
barrier, 
notepadplusplus, 
notepadplusplus-npppluginmanager, 
office365business, 
docker, 
kubernetes-cli, 
kubernetes-helm, 
wsl-debiangnulinux, 
wsl-ubuntu-2004, 
wsl-kalilinux"

if ([string]::IsNullOrWhiteSpace($chocolateyAppList) -eq $false){   
    Write-Host "Chocolatey Apps Specified"  
    
    $appsToInstall = $chocolateyAppList -split "," | foreach { "$($_.Trim())" }

    foreach ($app in $appsToInstall)
    {
        Write-Host "Installing $app"
        & choco install $app /y
    }
}
