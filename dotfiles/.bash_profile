# .bash_profile is run when we either log in or start up a new terminal
# app with bash as the default shell

# If not running interactively, don't do anything
[ -z "$PS1" ] && return

echo "... running .bash_profile from dotfiles"

PATH=$PATH:$HOME/.dotcore/bin

export DOTCORE_LOADED="y"

source ~/.bashrc
