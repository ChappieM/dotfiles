set __fish_git_prompt_showdirtystate yes
set __fish_git_prompt_showstashstate yes
set __fish_git_prompt_showuntrackedfiles yes
set __fish_git_prompt_showupstream yes
set __fish_git_prompt_color_branch magenta
set __fish_git_prompt_color_upstream_ahead green
set __fish_git_prompt_color_upstream_behind red
set __fish_git_prompt_char_untrackedfiles "?"
set __fish_git_prompt_char_upstream_equal ""
set __fish_git_prompt_char_stagedstate "+"
set __fish_git_prompt_char_dirtystate "!"
set __fish_git_prompt_char_stateseparator " "

function fish_prompt
    set -l p (set_color $fish_color_cwd)(prompt_pwd)(set_color normal)
    set -l g (__fish_git_prompt "%s")
    if test -n "$g"
      set -l gg (string split " " -- $g)
      set -a p " "$gg[1]
      set -l ggg $gg[2]
      if test -n "$ggg"
        set -a p (printf " %s[%s]%s" (set_color red) $ggg (set_color normal))
      end
    end
    set -a p \n
    set -a p (set_color $fish_color_ps)'➜'(set_color normal)" "

    echo -ns $p
end
