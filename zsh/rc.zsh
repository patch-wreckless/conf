CONF_ROOT="$(dirname $0)/.."

. "${CONF_ROOT}/sh/portable/rc.sh"

# If EDITOR is set to something containing "vi" then zle will use vim-like
# keybindings. Ensure it uses the defaults regardless of EDITOR.
bindkey -e

autoload -U edit-command-line
zle -N edit-command-line
bindkey '^x^e' edit-command-line

setopt INTERACTIVE_COMMENTS

if command -v starship > /dev/null; then
	eval "$(starship init zsh)"
fi

