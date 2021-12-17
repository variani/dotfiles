files=(
.gitconfig
.tmux.conf
.vimrc
.vim/coc-settings.json
)

src="$(pwd)"
dest=$HOME

for f in ${files[*]} ; do
  echo $f
  ln -sfn $src/$f $dest/$f
done

