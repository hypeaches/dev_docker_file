#!/bin/bash

SCRIPT_DIR=$(cd $(dirname ${BASH_SOURCE[0]}); pwd)
echo "---------------script: $0"
echo "-------------work dir: ${SCRIPT_DIR}"

if [ ! -d /var/run/sshd ]
then
    mkdir /var/run/sshd
fi
sed -ri 's/^#?PermitRootLogin\s+.*/PermitRootLogin yes/' /etc/ssh/sshd_config
sed -ri 's/UsePAM yes/#UsePAM yes/g' /etc/ssh/sshd_config

if [ ! -d /root/.ssh ]
then
    mkdir /root/.ssh
fi
