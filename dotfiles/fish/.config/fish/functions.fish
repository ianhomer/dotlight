if not status --is-login
    function fish_greeting
        #intentionally left blank
    end

    #
    # If terminal called from within vim, then keep it simple
    #
    if [ -n "$VIM" ]
        function fish_prompt
            echo " > "
        end
    end
end

function fish_right_prompt
    #intentionally left blank
end
