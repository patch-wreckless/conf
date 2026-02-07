if command -v cargo >/dev/null; then
	alias cargo-install='RUSTFLAGS="-C target-cpu=native -C opt-level=3" \
		cargo install --locked --force'
fi

alias pb=pbcopy
alias pbp=pbpaste

if command -v csrc > /dev/null; then
	csrc() {
		local dir
		dir="$(command csrc "$@")" || return
		[ -n "${dir}" ] && cd "${dir}"
	}
fi

if command -v nvim > /dev/null; then
	alias vi=nvim
fi

