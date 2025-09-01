if status --is-interactive
    source ~/.config/fish/aliases.fish
    source ~/.config/fish/functions.fish

    #
    # Tweak colors for me - noise reduction, red/green color blind and
    # long-sighted.
    #
    # execute `set | grep fish_color` to see colors in use in shell
    #
    if [ "$BG_MODE" = light ]
        set fish_color_command 000000
    else
        set theme_color_scheme dark
        # Command in white for clarity on dark background
        set fish_color_command ffffff
        # red-green color blind friendly, red on dark background not good for me
        set fish_color_error 14b77b
    end
end
