#!/bin/bash -e

# Change UID and GID based off $HOST_UID and $HOST_GID
groupmod --gid $HOST_GID user
usermod --uid $HOST_UID --gid $HOST_GID user

# Change ownership of all files and folders that used previous UID and GID
find / -gid $HOST_GID -uid $HOST_UID | xargs chown "$HOST_UID:$HOST_GID"

su -c 'touch /tmp/volume/run-file' - user
ls -al /tmp /tmp/volume
