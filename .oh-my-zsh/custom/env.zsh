export PATH=$PATH:$HOME/.local/bin/scripts
export SSH_AUTH_SOCK=~/.ssh/ssh-agent.sock
ssh-add -l 2>/dev/null >/dev/null
if [ $? -ge 2 ]; then
  rm -rf "$SSH_AUTH_SOCK"
  ssh-agent -a "$SSH_AUTH_SOCK" >/dev/null
fi
