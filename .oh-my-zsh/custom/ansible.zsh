maxxberg.ops.tmpl () {
  podman run -it --rm --pull=newer -v ~/.ssh:/root/.ssh "ghcr.io/maxxberg/maxxberg.ops:${1}" "${@:2}"
}

maxxberg.ops.prod_raw () {
  maxxberg.ops.tmpl main "${@}"
}

maxxberg.ops.prod () {
	if [ -z $1 ]; then
		return
	fi
	maxxberg.ops.prod_raw ansible-playbook --ask-vault-pass -i inventory/prod.yml "playbooks/${1}.yaml"
}


maxxberg.ops.dev_raw () {
  maxxberg.ops.tmpl devel "${@}"
}

maxxberg.ops.dev () {
  maxxberg.ops.dev_raw ansible-playbook --ask-vault-pass -i inventory/dev.yml "playbooks/${1}.yml"
}
