FROM debian

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && \
    apt-get upgrade && \
    deb http://ppa.launchpad.net/ansible/ansible/ubuntu trusty main && \
    apt-key adv --keyserver keyserver.ubuntu.com -recv-keys 93C4A3FD7889C367 && \
    apt update && \
    apt install ansible

    