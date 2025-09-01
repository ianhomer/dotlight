if type which-dotme-aliases 2>/dev/null
    echo "‼︎ dotme aliases have already been defined"
    which-dotme-aliases
else
    alias which-dotme-aliases="echo '~/.config/fish/aliases.fish'"
    . ~/.config/sh/aliases.sh
end
