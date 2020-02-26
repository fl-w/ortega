function fish_right_prompt --description 'Write out the right side of prompt'

  __ortega_user
  __ortega_pwd
  __ortega_vcs_prompt
  __ortega_timestamp

  set_color normal
end

function __ortega_user
  if test "$theme_show_user" = 'yes'
    set_color $fish_color_cwd
    printf $USER
    set_color normal
    echo -n " at "
  end
end

function __ortega_pwd
  set -l cwd

  if test "$theme_short_path" = 'yes'
    set cwd (basename (prompt_pwd))
  else if test "$theme_abbr_path" = 'yes'
    set cwd (prompt_pwd)
  else
    set cwd $PWD
  end

  set_color $fish_color_cwd
  printf '%s' (echo $cwd | sed -e "s|^$HOME|~|" -e 's|^/private||' -e 's|~/src/||')

  set_color normal
end

function __ortega_vcs_prompt
    if git rev-parse --show-toplevel >/dev/null 2>&1
        set_color normal
        printf ' on '
        set_color yellow
        printf '%s' (__ortega_vcs_current_branch)
        set_color green
        #vcs_prompt_status
        set_color normal
    end
end

function __ortega_vcs_current_branch -d 'Prints a human-readable representation of the current branch'
  set -l ref (git symbolic-ref HEAD 2>/dev/null; or git rev-parse --short HEAD 2>/dev/null)
  if test -n "$ref"
    echo $ref | sed -e s,refs/heads/,,
    return 0
  end
end

function __ortega_vcs_prompt_status -d 'Summarize the current status in git'
  # TODO

end

function __ortega_timestamp -d 'Prints a human-readable timestamp in fish_color_cwd'
  if test "$theme_timestamp_shown" = 'yes'
    set_color $fish_color_autosuggestion
    printf ' %s' (date +%H:%M:%S)
    echo
  end
end
