# .bash_profile is run when we either log in or start up a new terminal
# app with bash as the default shell

echo "... running .bash_profile from dotfiles"

PATH=$PATH:$HOME/.dotcore/bin

if [ -x /usr/bin/tput ] && tput setaf 1 >&/dev/null; then
  # Colours are supported
  PS1='\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w \$\[\033[00m\] '
else
  PS1='\u@\h:\w\$ '
fi

export DOTCORE_LOADED="y"
