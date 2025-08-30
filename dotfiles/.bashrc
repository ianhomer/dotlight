# .bashrc is executed each time shell starts
echo "... running ~/.bashrc from dotcore"

# Set up history
HISTCONTROL=ignoreboth
HISTSIZE=1000
HISTFILESIZE=2000
shopt -s histappend
shopt -s checkwinsize

echo "... ~/.bashrc complete"
