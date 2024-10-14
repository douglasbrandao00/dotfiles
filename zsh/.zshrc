# Created by Zap installer
[ -f "${XDG_DATA_HOME:-$HOME/.local/share}/zap/zap.zsh" ] && source "${XDG_DATA_HOME:-$HOME/.local/share}/zap/zap.zsh"
plug "zsh-users/zsh-autosuggestions"
plug "zap-zsh/supercharge"
plug "zap-zsh/zap-prompt"
plug "zsh-users/zsh-syntax-highlighting"


. "$HOME/.asdf/asdf.sh"
PATH=$PATH:~/.cargo/bin:~/go/bin
# append completions to fpath
fpath=(${ASDF_DIR}/completions $fpath)
. ~/.asdf/plugins/java/set-java-home.zsh

alias cc="clear"
alias ll="exa -lha"
# Load and initialise completion system
autoload -Uz compinit
compinit
