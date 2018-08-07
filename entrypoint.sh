#!/bin/bash -e

# Change UID and GID based off $HOST_UID and $HOST_GID

# Change ownership of all files and folders that used previous UID and GID
# find / -gid -uid | xargs chown "$HOST_UID:$HOST_GID"

touch /tmp/volume/run-file
ls -al /tmp /tmp/volume
