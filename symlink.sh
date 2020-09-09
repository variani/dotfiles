#!/usr/bin/env bash

files=(
.tmux.conf
.vim/coc-settings.json
.vimrc
)

src="~/git/variani/dotfiles"

for f in ${files[*]} ; do
  ln -sfn $src/$f ~/$f
done
