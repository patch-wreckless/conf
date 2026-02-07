CONF_ROOT="$(dirname $0)/../.."

. "${CONF_ROOT}/sh/portable/aliases.sh"

if command -v git >/dev/null; then

	# Removing and re-adding config includes keeps the include order
	# aligned with the script.

	DEFAULT_GIT_CONFIG="$(realpath "${CONF_ROOT}/git/default.gitconfig")"
	git config --global --unset include.path "${DEFAULT_GIT_CONFIG}"
	git config --global --add include.path "${DEFAULT_GIT_CONFIG}"

	DELTA_GIT_CONFIG="$(realpath "${CONF_ROOT}/git/delta.gitconfig")"
	git config --global --unset include.path "${DELTA_GIT_CONFIG}"
	if command -v delta 1>/dev/null; then
		git config --global --add include.path "${DELTA_GIT_CONFIG}"
	fi
fi

