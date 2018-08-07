#!/bin/bash -e
groupadd --gid $HOST_GID user
useradd --uid $HOST_UID --gid $HOST_GID user

su -c 'touch /tmp/volume/run-file' - user
ls -al /tmp /tmp/volume
