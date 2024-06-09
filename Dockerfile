FROM ubuntu:latest

RUN mkdir -p /root/code
WORKDIR /root/code

RUN echo y | unminimize
RUN apt-get update
RUN apt-get install -y build-essential htop man valgrind

CMD ["bash"]
