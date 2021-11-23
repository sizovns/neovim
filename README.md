# My Neovim config
## Installation
1. Create symlink to `~/.vimrc` command
```
$ make link
```
2. Download plug vim
```
cd ~/.vim/
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```
3. Open `~/.vim/init.vim` in `vim` or `neovim` and install plugs `:PlugInstall`, then run `:CocUpdate` to update coc extensions
