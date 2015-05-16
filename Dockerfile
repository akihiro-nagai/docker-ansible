FROM ubuntu:latest
MAINTAINER aki <aki@maumau.jpn.org>

RUN apt-get update
RUN apt-get install ssh -y
RUN mkdir -p /var/run/sshd
RUN mkdir -p /root/.ssh
RUN chmod 700 /root/.ssh
ADD resources/id_rsa.pub /root/.ssh/authorized_keys
RUN chmod 600 /root/.ssh/authorized_keys
CMD /usr/sbin/sshd -D

EXPOSE 22
