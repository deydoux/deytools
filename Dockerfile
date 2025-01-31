FROM ubuntu:latest
LABEL org.opencontainers.image.source="https://github.com/deydoux/denv"
LABEL version="0.9.1"

RUN mkdir -p /root/code
WORKDIR /root/code

RUN apt-get update && apt-get install -y \
	build-essential \
	curl \
	ffmpeg \
	git \
	htop \
	imagemagick \
	libreadline-dev \
	man \
	neofetch \
	strace \
	unminimize \
	valgrind \
	vim \
	wget

RUN yes | unminimize

CMD ["bash"]
