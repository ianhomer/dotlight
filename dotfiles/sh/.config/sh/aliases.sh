alias vi="nvim"

alias push="git push"
alias gs="git status"

alias ...="cd ../.."
alias ....="cd ../../.."

# search for file in directory and open in nvim
alias o="fzf --height "100%" | xargs nvim -c ':cd %:h'"
alias oh="fd -H | fzf --height "100%" | xargs nvim -c ':cd %:h'"
alias oi="fd -I | fzf --height "100%" | xargs nvim -c ':cd %:h'"
alias ohi="fd -HI | fzf --height "100%" | xargs nvim -c ':cd %:h'"
