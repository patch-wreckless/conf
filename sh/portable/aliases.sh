alias cargo-install='RUSTFLAGS="-C target-cpu=native -C opt-level=3" \
	cargo install --locked --force'

alias pb=pbcopy
alias pbp=pbpaste

if command -v nvim > /dev/null; then
	alias vi=nvim
fi

