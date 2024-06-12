# Set OhMyPosh prompt and import Catppuccin theme
oh-my-posh init pwsh --config 'https://raw.githubusercontent.com/JanDeDobbeleer/oh-my-posh/main/themes/catppuccin_mocha.omp.json' | Invoke-Expression

# Set an alias for vim = nvim
Set-Alias vim nvim

# Set dotfiles = git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME
function Invoke-Dotfiles {
    git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME @args
}
Set-Alias -Name dotfiles -Value Invoke-Dotfiles
