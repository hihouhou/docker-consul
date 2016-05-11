#
# Consul Dockerfile
#
# https://github.com/
#

# Pull base image.
FROM debian:latest

MAINTAINER hihouhou < hihouhou@hihouhou.com >

ENV CONSUL_VERSION 0.6.4

# Update & install packages for installing consul
RUN apt-get update && \
    apt-get install -y wget unzip

#Install and configure hashcat
RUN wget https://releases.hashicorp.com/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_linux_amd64.zip && \
    cd /usr/local/bin/ && \
    unzip /consul_${CONSUL_VERSION}_linux_amd64.zip


#Add link for binary
#RUN ln -s /hashcat/hashcat-cli64.bin /usr/bin/hashcat

#EXPOSE 9000

#CMD ["/bin/bash""]
