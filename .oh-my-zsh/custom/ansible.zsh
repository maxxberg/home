maxxberg.ops.prod () {
	if [ -z $1 ]; then
		return
	fi
	podman run -it --rm --pull=newer -v ~/.ssh:/root/.ssh ghcr.io/maxxberg/maxxberg.ops:main ansible-playbook --ask-vault-pass -i inventory/prod.yml playbooks/$1.yaml
}
