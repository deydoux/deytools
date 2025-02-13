FROM ubuntu:latest
LABEL org.opencontainers.image.source="https://github.com/deydoux/deytools"
LABEL version="1.1.1"

RUN mkdir -p /root/workspace
WORKDIR /root/workspace

RUN apt-get update && apt-get install -y \
	build-essential \
	curl \
	ffmpeg \
	git \
	git-filter-repo \
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
