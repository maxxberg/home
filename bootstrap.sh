BASEDIR="$(dirname ${PWD}/${0})"
BASEDIR="$(echo ${BASEDIR} | sed -e 's/\/\.$//g' )"


## oh-my-zsh
# install oh-my-zsh if not exists
if [[ ! -d "${HOME}/.oh-my-zsh" ]]; then
	sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
fi

# copy *.zsh files to custom
if [[ -n "${ZSH_CUSTOM}" ]]; then
	cp -rf "${BASEDIR}/.oh-my-zsh/custom" "${ZSH_CUSTOM}"
fi

## nvim
#copy nvim files to their directory
cp -r "${BASEDIR}/.config/nvim" "${XDG_CONFIG_HOME:-$HOME/.config}"
