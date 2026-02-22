CONF_ROOT="$(dirname $0)/.."

. "${CONF_ROOT}/sh/portable/rc.sh"

alias bke="bindkey -e"
alias bkv="bindkey -v"

# If EDITOR is set to something containing "vi" then zle will use vim-like
# keybindings. Ensure it uses the defaults regardless of EDITOR.
bindkey -e

setopt INTERACTIVE_COMMENTS

