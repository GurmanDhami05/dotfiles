if status is-interactive
    # Commands to run in interactive sessions can go here
end

starship init fish | source
set -g fish_greeting

alias ":q" exit
alias "v" "nvim"
alias "ls" "lsd"

# neofetch

#qt5
set -x QT_QPA_PLATFORMTHEME qt5ct

# terminal
# set -Ux TERMINAL alacritty

fzf --fish | source


