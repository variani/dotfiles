export PS1="> "
export PS2="> "

if [ -f ~/.bash_aliases ]; then
  . ~/.bash_aliases
fi

# colored ls output 
export CLICOLOR=1 

# apply only for interactive sessions, https://superuser.com/a/1361068
if set -o | grep 'on$' | grep -q '^\(vi\|emacs\)\b'; then
  # fix for vim binding ctrl-s, https://stackoverflow.com/a/11298171
  bind -r '\C-s'
  stty -ixon
fi
