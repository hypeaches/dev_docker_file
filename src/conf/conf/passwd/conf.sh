#!/bin/bash

echo "---------------script: $0"
echo "-------------work dir: $1"
sed -i 's/root:\/root:\/bin\/bash/root:\/root:\/bin\/zsh/g' /etc/passwd
