# vscode odoo setup
FROM lscr.io/linuxserver/code-server

RUN sh -c "$(wget -O- https://github.com/deluan/zsh-in-docker/releases/download/v1.1.1/zsh-in-docker.sh)"

RUN npm install -g npm
RUN npm install -g less@3.10.3

RUN \
  echo "**** clean up ****" && \
  apt-get clean && \
  rm -rf \
    /config/* \
    /tmp/* \
    /var/lib/apt/lists/* \
    /var/tmp/* \
    /etc/apt/sources.list.d/nodesource.list
