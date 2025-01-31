FROM ubuntu:latest
LABEL org.opencontainers.image.source="https://github.com/deydoux/denv"
LABEL version="1.0.0"

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
	wget \
	zsh

RUN yes | unminimize

RUN sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
COPY home/* /root

CMD ["zsh"]
