# vscode for odoo15 dev
FROM lscr.io/linuxserver/code-server:4.7.0

RUN \
  echo "**** install build dependencies ****" && \
    apt-get update && \
    apt-get install -y \
    build-essential \
    nodejs \
    wget \
    vim \
    virtualenv \
    make libssl-dev zlib1g-dev \
    libbz2-dev libreadline-dev libsqlite3-dev wget curl llvm libncurses5-dev \
    libncursesw5-dev xz-utils tk-dev libffi-dev liblzma-dev python-openssl postgresql pgcli \
    xfonts-75dpi
RUN apt-get install git python3 python3-pip build-essential wget python3-dev python3-venv python3-wheel libxslt-dev libzip-dev libldap2-dev libsasl2-dev python3-setuptools node-less libjpeg-dev gdebi -y
RUN apt-get install -y libpq-dev python-dev libxml2-dev libxslt1-dev libldap2-dev libsasl2-dev libffi-dev

RUN sh -c "$(wget -O- https://github.com/deluan/zsh-in-docker/releases/download/v1.1.1/zsh-in-docker.sh)"

# RUN npm install -g npm
# RUN npm install -g less@3.10.3 -f

RUN wget https://github.com/wkhtmltopdf/wkhtmltopdf/releases/download/0.12.5/wkhtmltox_0.12.5-1.focal_amd64.deb
RUN dpkg -i wkhtmltox_0.12.5-1.focal_amd64.deb
RUN apt -f install
RUN rm -rf wkhtmltox_0.12.5-1.focal_amd64.deb

RUN \
  echo "**** clean up ****" && \
  apt-get clean && \
  rm -rf \
    /config/* \
    /tmp/* \
    /var/lib/apt/lists/* \
    /var/tmp/* \
    /etc/apt/sources.list.d/nodesource.list
