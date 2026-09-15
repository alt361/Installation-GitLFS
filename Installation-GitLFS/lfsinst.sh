#!/bin/bash

apt update -y && apt upgrade -y

wget https://packagecloud.io/github/git-lfs/gpgkey -O /etc/apt/keyrings/git-lfs.asc
chmod -R 777 /etc/apt/keyrings/

tee /etc/apt/sources.list.d/git-lfs.sources << EOF
Types: deb
URIs: https://packagecloud.io/github/git-lfs/
Suites: binary/
Signed-by: /etc/apt/keyrings/git-lfs.asc
EOF

chmod -R 777 /etc/apt/sources.list.d/git-lfs.sources

apt update -y && apt upgrade -y
apt install git-lfs
