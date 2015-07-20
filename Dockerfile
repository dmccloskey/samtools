# Dockerfile to build Samtools container images
# Based on Ubuntu

# Set the base image to Ubuntu
FROM ubuntu:latest

# File Author / Maintainer
MAINTAINER Douglas McCloskey <dmccloskey87@gmail.com>

# Update the repository sources list and install samtools
RUN apt-get update && apt-get install -y samtools

# Cleanup
RUN apt-get clean

# Create an app user
ENV HOME /home/user
#RUN useradd --create-home --home-dir $HOME user \
#    && chown -R user:user $HOME

WORKDIR $HOME
#USER user
