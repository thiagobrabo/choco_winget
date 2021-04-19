$chocolateyAppList = 
"7zip, 
advanced-ip-scanner, 
autohotkey, 
azure-data-studio, 
chocolateygui, 
curl, 
discord, 
docker-desktop, 
everything, 
firefox, 
adblockplus-firefox, 
gimp, 
git, 
google-backup-and-sync, 
gcloudsdk, 
headset, 
inkscape, 
keepassxc, 
kubernetes-cli, 
microsoft-windows-terminal, 
mremoteng, 
notepadpluplus, 
notion, 
nmap, 
nxlog, 
obs-studio, 
office365business, 
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
wsl-debiangnulinux, 
wsl-ubuntu-2004, 
winlogbeat, 
winscp.install, 
wireshark, 
zoom, 
zap"

if ([string]::IsNullOrWhiteSpace($chocolateyAppList) -eq $false){   
    Write-Host "Chocolatey Apps Specified"  
    
    $appsToInstall = $chocolateyAppList -split "," | foreach { "$($_.Trim())" }

    foreach ($app in $appsToInstall)
    {
        Write-Host "Installing $app"
        & choco install $app /y
    }
}
