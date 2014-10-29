############################################################
# Dockerfile to build Python WSGI Application Containers
# Based on Ubuntu
############################################################

# Set the base image to Ubuntu
FROM ubuntu

# File Author / Maintainer
MAINTAINER jjuanda

# Update the sources list
RUN apt-get update
RUN apt-get dist-upgrade

# Install python & pip
RUN apt-get install -y python python-dev python-distribute python-pip

# Install pypicache
RUN pip install devpi
RUN mkdir /packages

EXPOSE 9005

WORKDIR /packages

CMD devpi-server --port 9005 --host 0.0.0.0 --serverdir /packages




