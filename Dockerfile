#
# Consul Dockerfile
#
# https://github.com/
#

# Pull base image.
FROM debian:latest

MAINTAINER hihouhou < hihouhou@hihouhou.com >

ENV CONSUL_VERSION 1.6.2

# Update & install packages for installing consul
RUN apt-get update && \
    apt-get install -y wget unzip

#Install and configure consul
RUN wget https://releases.hashicorp.com/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_linux_amd64.zip && \
    cd /usr/local/bin/ && \
    unzip /consul_${CONSUL_VERSION}_linux_amd64.zip

EXPOSE 8500

CMD /usr/local/bin/consul $options
