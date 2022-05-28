# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="robbyrussell"

# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

HYPHEN_INSENSITIVE="true"
ENABLE_CORRECTION="true"
COMPLETION_WAITING_DOTS="true"
HIST_STAMPS="dd/mm/yyyy"

zstyle ':omz:update' mode auto      # update automatically without asking
zstyle ':omz:update' frequency 2

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

source /opt/asdf-vm/asdf.sh
export PATH=$HOME/.local/bin:$HOME/.cargo/bin:$PATH
export PATH=/var/lib/snapd/snap/bin:$HOME/snap/bin:$PATH
export PATH=$HOME/.config/alacritty/alacritty.yml:$HOME/snap/bin:$PATH

alias cls="clear"
alias alac="vim ~/.config/alacritty.yml"
alias zshrc="vim ~/.zshrc"
alias vimrc="vim ~/.config/lvim/config.lua"
alias sozsh="source ~/.zshrc"
alias vim="/home/douglas/.local/bin/lvim"
alias cat="bat"
alias ls="exa --icons"
alias top="ytop"
