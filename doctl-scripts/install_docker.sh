#!/bin/bash

# Install latest version of docker
curl -sSL "https://get.docker.com/" | sudo sh
sudo systemctl enable docker
sudo usermod -aG docker hburzlaff

# Install latest docker compose 
get_latest_release() {
	# Taken from https://gist.github.com/lukechilds/a83e1d7127b78fef38c2914c4ececc3c
  	curl --silent "https://api.github.com/repos/$1/releases/latest" | # Get latest release from GitHub api
    grep '"tag_name":' |                                            # Get tag line
    sed -E 's/.*"([^"]+)".*/\1/'                                    # Pluck JSON value
}
DC_LATEST=$get_latest_release docker/compose)
sudo curl -L "https://github.com/docker/compose/releases/download/$DC_LATEST/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
