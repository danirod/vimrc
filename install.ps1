# vimrc install script

# Check the user has Vim
if (-Not (Get-Command git -ErrorAction SilentlyContinue -InformationAction SilentlyContinue)) {
    echo "You need to install Git to clone the vimrc repository."
    Exit
}

# Backup old setup (-f overwrites old backups)
if (Test-Path ~\vimfiles) {
    if (Test-Path ~\vimfiles.bak) {
        Remove-Item ~\vimfiles.bak -Recurse -Force
    }
    Move-Item ~\vimfiles -Destination ~\vimfiles.bak
    $(Get-Item ~\vimfiles.bak -Force).Attributes = "Hidden"
}

# Clone and install configuration
git clone https://github.com/danirod/vimrc $HOME\vimfiles
$(Get-Item ~\vimfiles -Force).Attributes = "Hidden"
echo 'Downloading vim-plug...'
md ~\vimfiles\autoload -Force | Out-Null
$uri = 'https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
(New-Object Net.WebClient).DownloadFile($uri, $ExecutionContext.SessionState.Path.GetUnresolvedProviderPathFromPSPath("~\vimfiles\autoload\plug.vim"))

# Execute install
if (Get-Command vim -ErrorAction SilentlyContinue -InformationAction SilentlyContinue) {
    vim +PlugInstall +qall
} else {
    echo "You don't have Vim installed at the moment."
    echo "Please, install it, then run:"
    echo "  vim +PlugInstall +qall"
}