FROM debian:latest
RUN apt-get update --yes && \
    apt-get install -y procps && \
    apt-get install -y sudo && \
    apt-get install -y gcc && \
    apt-get install -y vim && \
    apt-get install -y rsync && \
    apt-get install -y strace && \
    apt-get install -y ltrace && \
    apt-get install -y colorized-logs && \
    apt-get install -y htop && \
    apt-get install -y python3

COPY sudoers.d/sudoers.conf /etc/sudoers
RUN chown root:root /etc/sudoers

RUN useradd -m localuser1 && useradd -m localuser2 

RUN mkdir -p /var/spool/our_queue && mkdir /reports && chmod 700 /reports \
    && mkdir -p /archives
