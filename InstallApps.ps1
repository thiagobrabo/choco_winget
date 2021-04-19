$chocolateyAppList = 
"autohotkey, 
azure-data-studio, 
chocolateygui, 
curl, 
discord, 
firefox, 
adblockplus-firefox, 
gimp, 
git, 
google-backup-and-sync, 
headset, 
inkscape, 
microsoft-windows-terminal, 
mremoteng, 
office365business, 
opera, 
putty, 
rufus, 
terminals, 
virtualbox, 
vlc, 
vscode, 
wget, 
wsl, 
wsl2, 
wsl-debiangnulinux, 
wireshark"

if ([string]::IsNullOrWhiteSpace($chocolateyAppList) -eq $false){   
    Write-Host "Chocolatey Apps Specified"  
    
    $appsToInstall = $chocolateyAppList -split "," | foreach { "$($_.Trim())" }

    foreach ($app in $appsToInstall)
    {
        Write-Host "Installing $app"
        & choco install $app /y
    }
}
