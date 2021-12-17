# dotfiles

## Install

**Set bash as default**

Links

- https://www.tecmint.com/change-a-users-default-shell-in-linux/

```
# check available shells
cat /etc/shells
whereis bash
# change the default shell to bash for <user>
chsh -s /bin/bash <user>
```

Do the same via GUI: https://support.apple.com/en-us/HT208050

System Preferences > Users & Groups > Unlock > Control-click on the user.
 

**Install Xcode**

```
xcode-select --install
```

**Install Homebrew**

- https://brew.sh
- https://mac.install.guide/homebrew/3.html: for Mac Silicon machines
- https://www.digitalocean.com/community/tutorials/how-to-install-and-use-homebrew-on-macos: for Mac Intel machines
- https://mkyong.com/mac/where-does-homebrew-install-packages-on-mac/

1. Install Homebrew

```
# command copied from https://brew.sh
bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

2. Add Homebrew to `PATH`

- https://mac.install.guide/homebrew/3.html

> On Mac Intel machines, that's all you need to do; Homebrew is ready to use. On Mac Intel, Homebrew installs itself into the /usr/local/bin directory, which is already configured for access by the shell with the macOS default `$PATH` environment variable (the default is set by the `/usr/libexec/path_helper` command).

> On Apple Silicon machines, there's one more step. Homebrew files are installed into the /opt/homebrew folder. But the folder is not part of the default `$PATH`.

Instead of adding `brew shellenv` command to `~/.profile`, the alternative is to manually put its output to `~/.bash_profile` (when `bash` is default).

```
# configuration lines to be added to ~/.bash_profile
# equivalent to output from `brew shellenv`
export HOMEBREW_PREFIX="/opt/homebrew";
export HOMEBREW_CELLAR="/opt/homebrew/Cellar";
export HOMEBREW_REPOSITORY="/opt/homebrew";
export PATH="/opt/homebrew/bin:/opt/homebrew/sbin${PATH+:$PATH}";
export MANPATH="/opt/homebrew/share/man${MANPATH+:$MANPATH}:";
export INFOPATH="/opt/homebrew/share/info:${INFOPATH:-}";
```

3. Check/Update Homebrew

```
# check Homebrew is ok
brew doctor
# use the latest Homebrew
brew update
# upgrade any installed formulas
brew upgrade
```

4. Sep up Homebrew auto update

```
# install brew auto-update
brew install terminal-notifier
brew tap domt4/autoupdate
# configure brew auto-update
brew autoupdate --start --upgrade --cleanup --enable-notification
```

Each time the brew install command is called, the brew will be updated beforehand.

**Install & Configure iTerm2**

- https://sourabhbajaj.com/mac-setup/iTerm/

```
# install iTerm2
brew install --cask iterm2
# install fonts
brew tap homebrew/cask-fonts 
brew install --cask font-source-code-pro
```

Next manual configuration steps in iTerm2 Preference.

- Select the color scheme (see [colors/](colors/)) 
- Change the font to Source Code Pro Lite

**Configure vim**

Install the plugin manager: https://github.com/junegunn/vim-plug

```
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```

- Test if plugins specified in .vimrc can be install by `:PlugInstall` vim command.

**Configure tmux**

Install the plugin manager: https://github.com/tmux-plugins/tpm

```
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
```

- Reload the tmux with prefix + r (see .tmux.conf).
- Install the plugins specified in .tmux.conf with prefix + I (capital i, as in **I**nstall).
- Test if tmux plugings in .tmux.conf work by trying to save the current tmux session with prefix + s.

