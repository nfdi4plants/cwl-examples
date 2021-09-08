FROM r-base:latest

RUN apt-get update && \
      apt-get -y install sudo

RUN echo "docker:docker" | chpasswd && adduser docker sudo

USER docker
