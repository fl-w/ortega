# You can override some default options with config.fish:
#
#  set -g theme_short_path no

function fish_prompt
    set -l last_status $status

    __ortega_prompt $last_status

    set_color normal
end

function __ortega_prompt -a last_status
    if [ $last_status = 0 ]
        set_color magenta
    else
        set_color $fish_color_error

       if [ "$theme_display_err_code" = "yes" ]
            printf '[%d] ' $last_status
        end
    end

    set -q theme_prompt_symbol; or set -l theme_prompt_symbol "🢂"

    printf "$theme_prompt_symbol "
end
