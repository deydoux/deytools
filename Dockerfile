FROM ubuntu:latest

RUN mkdir -p /root/code
WORKDIR /root/code

RUN apt-get update
RUN apt-get upgrade -y
RUN apt-get install -y \
	build-essential \
	git \
	htop \
	libreadline-dev \
	man \
	strace \
	unminimize \
	valgrind
RUN echo y | unminimize

CMD ["bash"]
