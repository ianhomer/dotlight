# Kanagwa palette
# https://github.com/rebelot/kanagawa.nvim/blob/master/lua/kanagawa/colors.lua
color2='%F{#76946A}'
color4='%F{#7E9CD8}'

# https://git-scm.com/book/en/v2/Appendix-A%3A-Git-in-Other-Environments-Git-in-Zsh

autoload -Uz vcs_info
precmd_vcs_info() { vcs_info }
precmd_functions+=( precmd_vcs_info )
setopt prompt_subst
NEWLINE=$'\n'
PROMPT='${color2}%~%f ${color4}${vcs_info_msg_0_}%f $NEWLINE> '
zstyle ':vcs_info:git:*' formats '%b'
