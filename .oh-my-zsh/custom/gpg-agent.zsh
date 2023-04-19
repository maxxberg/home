if [[ ! -d "${HOME}/.gnupg" ]]; then
	mkdir -p "${HOME}/.gnupg"
fi

export GPG_TTY="$(tty)"
export SSH_AUTH_SOCK=$(gpgconf --list-dirs agent-ssh-socket)
gpgconf --launch gpg-agent
