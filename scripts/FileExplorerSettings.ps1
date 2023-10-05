#--- Configuring Windows properties ---
#--- Windows Features ---
# Show hidden files, Show protected OS files, Show file extensions
Set-WindowsExplorerOptions -EnableShowHiddenFilesFoldersDrives -EnableShowProtectedOSFiles -EnableShowFileExtensions

#--- File Explorer Settings ---
# will expand explorer to the actual folder you're in
Set-ItemProperty -Path HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced -Name NavPaneExpandToCurrentFolder -Value 1
#adds things back in your left pane like recycle bin
Set-ItemProperty -Path HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced -Name NavPaneShowAllFolders -Value 1
#opens PC to This PC, not quick access
Set-ItemProperty -Path HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced -Name LaunchTo -Value 1
#taskbar where window is open for multi-monitor
Set-ItemProperty -Path HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced -Name MMTaskbarMode -Value 2


Move-LibraryDirectory "Personal" "D:\Library\Documents"
Move-LibraryDirectory "My Video" "D:\Library\Videos"
Move-LibraryDirectory "My Pictures" "D:\Library\Pictures"
Move-LibraryDirectory "Desktop" "D:\Library\Desktop"
Move-LibraryDirectory "{374DE290-123F-4565-9164-39C4925E467B}" "D:\Library\Downloads"
Move-LibraryDirectory "Startup" "D:\Library\Startup"
Move-LibraryDirectory "Start Menu" "D:\Library\StartMenu"