#!/bin/sh

if [ -n "$SINGULARITY_CONTAINER" ];
then
  #env > ~/.login.singularity.env-$(date +%s)
  /bin/true
else
  #env > ~/.login.ssh.env-$(date +%s)
  if [ -n "$SSH_ORIGINAL_COMMAND" ]; then
    bash --login -c "$SSH_ORIGINAL_COMMAND"
  else
    bash --login
  fi
fi