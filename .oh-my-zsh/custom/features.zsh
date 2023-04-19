
if [[ "$(hostname)" -eq "dev-vm2" ]]; then
  if [[ "${USER}" -eq "max" ]]; then
    local ZSH_CUSTOM_FEATURES=('conda')
  fi
fi











if [[ -n "${ZSH_CUSTOM_FEATURES}" ]]; then
  for feature in "${ZSH_CUSTOM_FEATURES}"; do
    source "${ZSH_CUSTOM}/features/${feature}.zsh"
  done
fi

