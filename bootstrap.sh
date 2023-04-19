BASEDIR="$(dirname ${PWD}/${0})"
BASEDIR="$(echo ${BASEDIR} | sed -e 's/\/\.$//g' )"

echo "${BASEDIR}"

# oh-my-zsh
if [[ -n "${ZSH_CUSTOM}" ]]; then
	cp -rf "${BASEDIR}/.oh-my-zsh/custom" "${ZSH_CUSTOM}"
fi

# nvim
cp -r "${BASEDIR}/.config/nvim" "${XDG_CONFIG_HOME:-$HOME/.config}"
