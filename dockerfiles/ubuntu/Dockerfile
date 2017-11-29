FROM ubuntu:latest

RUN apt-get update && apt-get install -y  \
  openssh-client                          \ 
  wget                                    \
  curl                                    \
  git                                     \
  build-essential                         \
  cmake                                   \
  g++                                     \
  python                                  \
  python-yaml                             \
  lmod                                    \
  && rm -rf /var/lib/apt/lists/*

RUN apt-get update && apt-get install -y  \
  tcl                                     \
  bash-completion                         \
  && rm -rf /var/lib/apt/lists/*

RUN mkdir /build

COPY ./lmod.lmodrc.lua /etc/lmod.lmodrc.lua

COPY ./entry.sh /entry.sh

ENTRYPOINT ["/entry.sh"]
