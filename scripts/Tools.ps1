# ---------------------------------------------- #
# Browsers  ------------------------------------ #
# ---------------------------------------------- #
choco install -y googlechrome
choco install -y firefox

# ---------------------------------------------- #
# Common tools  --------------------------------- #
# ---------------------------------------------- #
choco install -y 7zip
choco install -y paint.net
# choco install -y screentogif
choco install -y zoomit
winget install -e -h --id WinDirStat.WinDirStat
# winget install -e -h --id Microsoft.BingWallpaper
# winget install -e -h --id Obsidian.Obsidian
winget install -e -h --id JohnMacFarlane.Pandoc
winget install -e -h --id Microsoft.Whiteboard -s msstore
# winget install -e -h --id Microsoft.PowerToys # settings to sync
# Already  installed by default
winget install -e -h --id Microsoft.Teams
# winget install -e -h --id Microsoft.Office
# winget install -e -h --id Logitech.Options
# winget install -e -h --id Dell.DisplayManager

# ---------------------------------------------- #
# Dev tools  ----------------------------------- #
# ---------------------------------------------- #
# winget install -e -h --id AndreasWascher.RepoZ
winget install -e -h --id CoreyButler.NVMforWindows
# iwr https://get.pnpm.io/install.ps1 -useb | iex
# iwr -useb get.scoop.sh | iex
# winget install -e -h --id GitHub.cli

choco install winmerge
choco install tortoisegit
winget install Docker.DockerDesktop

winget install Canonical.Ubuntu.2204


# ---------------------------------------------- #
# Azure tools  --------------------------------- #
# ---------------------------------------------- #
winget install -e -h --id Microsoft.AzureCLI
winget install -e -h --id Microsoft.AzureCosmosEmulator
winget install -e -h --id Microsoft.AzureDataStudio
# winget install -e -h --id Microsoft.azure-iot-explorer
winget install -e -h --id Microsoft.AzureStorageExplorer
# winget install -e -h --id Pulumi.Pulumi
winget install -e -h --id Microsoft.AzureFunctionsCoreTools
# Azurite can be installed through vscode extension or as a global npm package
# pnpm add -g azurite



# ---------------------------------------------- #
# Blog tools  ---------------------------------- #
# ---------------------------------------------- #
# wyam
# netlify
# statiq



# ---------------------------------------------- #
# Other tools  ---------------------------------- #
# ---------------------------------------------- #

choco install dropbox
choco install rescuetime
choco install camtasia --version=2022.4.1