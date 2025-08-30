# .bash_profile is run when we either log in or start up a new terminal
# app with bash as the default shell

echo "... running .bash_profile from dotfiles"

PATH=$PATH:$HOME/.dotcore/bin

export DOTCORE_LOADED="y"
