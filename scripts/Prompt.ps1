# ---------------------------------------------- #
# Prompt  -------------------------------------- #
# ---------------------------------------------- #
pwsh -Command { Install-Module posh-git -Scope CurrentUser -Force}
winget install -e -h --id JanDeDobbeleer.OhMyPosh

# ---------------------------------------------- #
# PowerShell  ---------------------------------- #
# ---------------------------------------------- #
winget install -e -h --id Microsoft.PowerShell
# Set-ExecutionPolicy RemoteSigned -Scope CurrentUser
Remove-Item -Path "$env:USERPROFILE\Documents\PowerShell\Microsoft.PowerShell_profile.ps1" -Force
New-Item -ItemType SymbolicLink -Path "$env:USERPROFILE\Documents\PowerShell\Microsoft.PowerShell_profile.ps1" -Target "$env:USERPROFILE\devsetup\config\powerShell\Microsoft.PowerShell_profile.ps1"


# # ---------------------------------------------- #
# # NuShell  ---------------------------------- #
# # ---------------------------------------------- #
# winget install -e -h --id Nushell.Nushell
# # saves an initialization script to ~/.oh-my-posh.nu that will be used in Nushell config file
# oh-my-posh init nu --config "$env:USERPROFILE\devsetup\config\prompt\.oh-my-posh.omp.json"
# Remove-Item -Path "$env:USERPROFILE\AppData\Roaming\nushell\config.nu" -Force
# New-Item -ItemType SymbolicLink -Path "$env:USERPROFILE\AppData\Roaming\nushell\config.nu" -Target "$env:USERPROFILE\devsetup\config\nu\config.nu"
# # config auto complete dotnet / nuke / ...

# ---------------------------------------------- #
# Windows Terminal ----------------------------- #
# ---------------------------------------------- #
# Windows Terminal (stable + preview) install with Cascadia Code PL font
winget install -e -h --id Microsoft.WindowsTerminal -s msstore
# winget install -e -h --id Microsoft.WindowsTerminalPreview -s msstore
# choco install -y cascadiacodepl

# Windows terminal configuration
Remove-Item -Path "$env:USERPROFILE\AppData\Local\Packages\Microsoft.WindowsTerminal_8wekyb3d8bbwe\LocalState\settings.json" -Force
New-Item -ItemType SymbolicLink -Path "$env:USERPROFILE\AppData\Local\Packages\Microsoft.WindowsTerminal_8wekyb3d8bbwe\LocalState\settings.json" -Target "$env:USERPROFILE\devsetup\config\windowsTerminal\settings.json"
cp "$env:USERPROFILE\devsetup\config\windowsTerminal\icons\*" "$env:USERPROFILE\AppData\Local\Packages\Microsoft.WindowsTerminal_8wekyb3d8bbwe\RoamingState\"

# Windows terminal preview configuration
# Remove-Item -Path "$env:USERPROFILE\AppData\Local\Packages\Microsoft.WindowsTerminalPreview_8wekyb3d8bbwe\LocalState\settings.json" -Force
# New-Item -ItemType SymbolicLink -Path "$env:USERPROFILE\AppData\Local\Packages\Microsoft.WindowsTerminalPreview_8wekyb3d8bbwe\LocalState\settings.json" -Target "$env:USERPROFILE\devsetup\config\windowsTerminal\settings.json"
# cp "$env:USERPROFILE\devsetup\config\windowsTerminal\icons\*" "$env:USERPROFILE\AppData\Local\Packages\Microsoft.WindowsTerminalPreview_8wekyb3d8bbwe\RoamingState\"


