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
