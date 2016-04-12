# vimrc install script

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
vim +PlugInstall +qall
