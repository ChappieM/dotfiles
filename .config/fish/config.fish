if status is-interactive
    # Commands to run in interactive sessions can go here
end

# tmux自動起動
# if test -z $TMUX
#   tmux new-session
# end

starship init fish | source
source ~/.asdf/asdf.fish
