if [[ "$(uname)" -eq "Darwin" ]]; then
	for config_file ("$ZSH_CUSTOM"/os/macos/*.zsh(N)); do
	  source "$config_file"
	done
	unset config_file
fi
	

