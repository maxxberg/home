#!/bin/zsh

BASEDIR="$(dirname ${PWD}/${0})"
BASEDIR="$(echo ${BASEDIR} | sed -e 's/\/\.$//g' )"


## oh-my-zsh
# install oh-my-zsh if not exists
if [[ ! -d "${HOME}/.oh-my-zsh" ]]; then
	sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
fi
if [[ ! -d "${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k" ]]; then
	git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
fi

# copy *.zsh files to custom
cp -rf "${BASEDIR}/.oh-my-zsh/custom/." "${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}"

## nvim
#copy nvim files to their directory
for f in ('.zshrc' '.p10k.zsh' '.condarc');do
	cp -f "${BASEDIR}/${f}" "${HOME}/"
done
cp -r "${BASEDIR}/.config/nvim" "${XDG_CONFIG_HOME:-$HOME/.config}"

