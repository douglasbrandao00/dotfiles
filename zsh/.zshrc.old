# Created by Zap installer
[ -f "${XDG_DATA_HOME:-$HOME/.local/share}/zap/zap.zsh" ] && source "${XDG_DATA_HOME:-$HOME/.local/share}/zap/zap.zsh"
plug "zsh-users/zsh-autosuggestions"
plug "zap-zsh/supercharge"
plug "zap-zsh/zap-prompt"
plug "zsh-users/zsh-syntax-highlighting"

export PATH=$PATH:/opt/gradle/gradle-8.8/bin

# Load and initialise completion system
autoload -Uz compinit
compinit

alias cls="clear"
alias lah="ls -lah"
alias tsm="~/.config/tmux/tmux-session-manager"  


. "$HOME/.asdf/asdf.sh"
eval "$(starship init zsh)"
