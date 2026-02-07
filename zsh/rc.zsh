source "${0:a:h}/../sh/portable/aliases.sh"

alias bke="bindkey -e"
alias bkv="bindkey -v"

# If EDITOR is set to something containing "vi" then zle will use vim-like
# keybindings. Ensure it uses the defaults regardless of EDITOR.
bke

setopt INTERACTIVE_COMMENTS

