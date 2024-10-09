# Created by Zap installer
[ -f "${XDG_DATA_HOME:-$HOME/.local/share}/zap/zap.zsh" ] && source "${XDG_DATA_HOME:-$HOME/.local/share}/zap/zap.zsh"
plug "zsh-users/zsh-autosuggestions"
plug "zap-zsh/supercharge"
plug "zap-zsh/zap-prompt"
plug "zsh-users/zsh-syntax-highlighting"

alias cc="clear"
alias tm="bun ~/.config/tm.js"
alias ll="exa -lha"


. "$HOME/.asdf/asdf.sh"
# append completions to fpath
fpath=(${ASDF_DIR}/completions $fpath)

. "$HOME/.nix-profile/etc/profile.d/hm-session-vars.sh"

. ~/.asdf/plugins/java/set-java-home.zsh

# Load and initialise completion system
autoload -Uz compinit
compinit
