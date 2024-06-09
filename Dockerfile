FROM ubuntu:latest

RUN mkdir -p /root/code
WORKDIR /root/code

RUN yes | unminimize
RUN apt-get update
RUN apt-get install -y build-essential htop man valgrind

CMD ["bash"]
