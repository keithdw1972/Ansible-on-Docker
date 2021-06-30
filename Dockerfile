FROM debian

RUN set -x && \
    apt-get update -y && \
    apt-get install -y --no-install-recommends gnupg2 ansible && \
    echo "deb http://ppa.launchpad.net/ansible/ansible/ubuntu bionic main" | tee -a /etc/apt/sources.list && \
    apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 93C4A3FD7BB9C367 && \
    apt-get update -y && \
    apt-get upgrade -y && \
    apt-get install ansible -y && \
    apt-get clean -y && \
    apt-get autoremove -y && \
    rm -rf /var/lib/apt/lists/* /src/* /tmp/*
