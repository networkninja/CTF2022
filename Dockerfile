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
    apt-get install -y python3 && \
    apt-get install -y python3-pip

COPY sudoers.d/sudoers.conf /etc/sudoers
RUN chown root:root /etc/sudoers
RUN pip3 install numpy

RUN useradd -m localuser1 && useradd -m localuser2 && \
    useradd -m localuser3 && useradd -m localuser4 && \
    useradd -m localuser5 && useradd -m localuser6 && \
    useradd -m localuser7 && useradd -m localuser8 && \
    useradd -m localuser9 && useradd -m localuser10 && \
    useradd -m localuser11 && useradd -m localuser12 && \
    useradd -m localuser13 && useradd -m localuser14 && \
    useradd -m localuser15 && useradd -m localuser16 && \
    useradd -m localuser17 && useradd -m localuser18 && \
    useradd -m localuser19 && useradd -m localuser20 && \
    useradd -m localuser21 && useradd -m biguser -u 59999

RUN mkdir -p /var/spool/our_queue && mkdir /reports && chmod 700 /reports \
    && mkdir -p /archives

COPY files/challenge_11/ /var/spool/our_queue
COPY files/challenge_16/ /
COPY files/challenge_17/sudo_report.sh /usr/local/bin/
COPY files/challenge_18/* /usr/local/bin/
COPY files/challenge_19/* /usr/local/bin/
COPY files/challenge_20/* /usr/local/bin/
COPY files/challenge_21/* /usr/local/bin/
