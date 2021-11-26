# My Neovim config
## Installation
1. Install nvim version >= 0.5.0 - https://github.com/neovim/neovim/releases
2. Create directory `~/.vim` by command 
```
mkdir ~/.vim
```
3. Clone repo inside `~/.vim` by command 
```
cd ~/.vim && git clone https://github.com/sizovns/neovim.git .
```
4. Create symlink to `~/.vimrc` by command
```
make link
```
5. Download plug vim
```
cd ~/.vim/
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```
6. Open `~/.vim/init.vim` in `vim` or `neovim` and install plugs `:PlugInstall`, then run `:CocUpdate` to update coc extensions
