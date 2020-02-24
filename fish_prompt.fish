function fish_prompt
    set -l last_status $status

    __ortega_prompt $last_status

    set_color normal
end

function __ortega_prompt -a last_status
    if test $last_status -ne 0
        set_color $fish_color_error

        if [ "$theme_display_err_code" = "yes" ]
            printf '[%d] ' $last_status
        end
    else
        set_color magenta
    end

    printf '🢂 '
end
