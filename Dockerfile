FROM ubuntu

# File Author
MAINTAINER Ankit Prasad

WORKDIR /usr/local

# Copies the files from the source on the host into the container’s set destination
ADD target/devops_calculator-1.0-SNAPSHOT.jar .
