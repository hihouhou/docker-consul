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

#Install and configure consul
RUN wget https://releases.hashicorp.com/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_linux_amd64.zip && \
    cd /usr/local/bin/ && \
    unzip /consul_${CONSUL_VERSION}_linux_amd64.zip


#Add configuration file for binary
RUN mkdir -p /etc/consul.d/server/
ADD server.json /etc/consul.d/server/

CMD ["/usr/local/bin/consul", "agent", "-config-file","/etc/consul.d/server/server.json"]
