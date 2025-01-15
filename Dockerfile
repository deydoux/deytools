FROM ubuntu:latest
LABEL org.opencontainers.image.source="https://github.com/deydoux/denv"
LABEL version="0.6.0"

RUN mkdir -p /root/code
WORKDIR /root/code

RUN apt-get update
RUN apt-get install -y \
	build-essential \
	ffmpeg \
	git \
	htop \
	imagemagick \
	libreadline-dev \
	man \
	strace \
	unminimize \
	valgrind
RUN echo y | unminimize

CMD ["bash"]
