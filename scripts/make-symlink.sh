files=(
.gitconfig
.bash_profile
.tmux.conf
.vimrc
.vim/coc-settings.json
.Rprofile
.Renviron
)

src="$(pwd)"
dest=$HOME

for f in ${files[*]} ; do
  echo $f
  ln -sfn $src/$f $dest/$f
done

