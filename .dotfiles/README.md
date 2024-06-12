# dotfiles for windows

## Setup
make sure `$HOME` variable is set in `PATH`
```sh
git init --bare $HOME/.dotfiles
```
in PowerShell profile
```sh
function Invoke-Dotfiles {
    git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME @args
}
Set-Alias -Name dotfiles -Value Invoke-Dotfiles
```
```sh
dotfiles remote add origin git@github.com:Ollie2304/dotfiles-win.git
```
## Config
```sh
dotfiles config status.showUntrackedFiles no
dotfiles remote set-url origin git@github.com:Ollie2304/dotfiles-win.git
```
## Usage Example
```sh
dotfiles status
dotfiles add .gitconfig
dotfiles commit -m "add gitconfig"
dotfiles push
```
## Replication
```sh
git clone --separate-git-dir=$HOME/.dotfiles https://github.com/Ollie/dotfiles-win.git dotfiles-temp
# in wsl shell
rsync --recursive --verbose --exclude '.git' /mnt/c/Users/Ollie/dotfiles-temp/ /mnt/c/Users/Ollie
rm -Recurse -Force dotfiles-temp
```