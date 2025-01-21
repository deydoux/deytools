FROM ubuntu:latest
LABEL org.opencontainers.image.source="https://github.com/deydoux/denv"
LABEL version="0.8.0"

RUN mkdir -p /root/code
WORKDIR /root/code

RUN apt-get update

RUN apt-get install -y unminimize
RUN yes | unminimize

RUN apt-get install -y ffmpeg
RUN apt-get install -y build-essential
RUN apt-get install -y neofetch
RUN apt-get install -y valgrind
RUN apt-get install -y imagemagick
RUN apt-get install -y git
RUN apt-get install -y libreadline-dev
RUN apt-get install -y curl
RUN apt-get install -y man
RUN apt-get install -y wget
RUN apt-get install -y strace
RUN apt-get install -y htop

CMD ["bash"]
