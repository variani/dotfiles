# dotfiles

## Install

**Set up bash as default**

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
- https://mac.install.guide/homebrew/3.html: install instructions for Apple Silicon machines: for Mac Silicon machines
- https://www.digitalocean.com/community/tutorials/how-to-install-and-use-homebrew-on-macos: for Mac Intel machines

1. Install Homebrew

```
# command from https://brew.sh
bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

2. Add Homebrew to `PATH`

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
