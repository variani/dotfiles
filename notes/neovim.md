# About

- https://www.youtube.com/watch?v=DogKdiRx7ls
- https://github.com/ThePrimeagen/.dotfiles/blob/master/nvim/.config/nvim/plugin/telescope.vim
  - https://github.com/ThePrimeagen/.dotfiles/blob/master/nvim/.config/nvim/plugin/telescope.vim
  
## Install 

Install neovim on Ubuntu

- https://github.com/neovim/neovim/wiki/Installing-Neovim
- https://thomasventurini.com/articles/install-neovim-05-in-ubuntu/

```
sudo add-apt-repository ppa:neovim-ppa/unstable
sudo apt-get update
sudo apt-get install neovim
```

Create a `.vimrc` file

```
mkdir -p ~/.config/nvim/
touch ~/.config/nvim/init.vim
```

Set up a plugin manager, https://github.com/junegunn/vim-plug

```
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
```

## Plugins/commands

- Check spelling: https://thoughtbot.com/blog/vim-spell-checking
