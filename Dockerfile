FROM ubuntu:14.04
MAINTAINER Yann Hodique <hodiquey@vmware.com>
ENV REFRESHED_AT 10/27/2014

RUN apt-get update
RUN apt-get install -y nmap

ADD forward.sh /usr/local/bin/forward.sh

EXPOSE 10000

ENTRYPOINT ["/usr/local/bin/forward.sh"]
