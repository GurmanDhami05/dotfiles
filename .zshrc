export EDITOR="nvim"
export SUDO_EDITOR="$EDITOR"
export PGHOST="/var/run/postgresql"

export PATH=$PATH:/usr/local/go/bin

HISTFILE=~/.history
HISTSIZE=10000
SAVEHIST=50000

setopt inc_append_history

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

user="$(whoami)"
# Zinit 
ZINIT_HOME="/home/$USER/.local/share/zinit/zinit.git"

# check zinit
if [ ! -d "$ZINIT_HOME" ]; then
  mkdir -p "$(dirname $ZINIT_HOME)"
  git clone https://github.com/zdharma-continuum/zinit.git "$ZINIT_HOME"
fi

source "$ZINIT_HOME/zinit.zsh"

#Prompt
eval "$(starship init zsh)"
#plugins
zinit light zsh-users/zsh-syntax-highlighting
zinit light zsh-users/zsh-completions
zinit light zsh-users/zsh-autosuggestions
zinit light Aloxaf/fzf-tab

#snippets
zinit snippet OMZP::git
zinit snippet OMZP::sudo
zinit snippet OMZP::archlinux
zinit snippet OMZP::command-not-found

#load
autoload -U compinit && compinit
zinit cdreplay -q



#History
HISTSIZE=1000
HISTFILE=~/.zsh_history
SAVEHIST=$HISTSIZE
HISTDUP=erase

setopt appendhistory
setopt sharehistory
setopt hist_ignore_space
setopt hist_ignore_all_dups
setopt hist_save_no_dups
setopt hist_ignore_dups
setopt hist_find_no_dups

#completion-style
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}' 
zstyle ':completion:*' list-colors '${(s.:.)LS_COLORS}' 
zstyle ':completion:*' menu no 
zstyle ':fzf-tab:complete:cd:*' fzf-preview 'ls --color $realpath' 
zstyle ':fzf-tab:complete:__zoxide_z:*' fzf-preview 'ls --color $realpath' 

#Alias

alias ls="ls --color"
alias fm="ranger"
alias vim="nvim"
alias c="clear"
alias q="quit"
alias ls="lsd"



# fzf
eval "$(fzf --zsh)"
eval "$(zoxide init --cmd cd zsh)"

eval $(thefuck --alias)

# fastfetch
fastfetch
