FROM ubuntu:latest

RUN apt-get update && apt-get install -y  \
  openssh-client                          \ 
  wget                                    \
  curl                                    \
  git                                     \
  build-essential                         \
  cmake                                   \
  g++                                     \
  && rm -rf /var/lib/apt/lists/*

