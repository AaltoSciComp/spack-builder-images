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

RUN apt-get update && apt-get install -y  \
  libgl1-mesa-dri                         \
  libgl1-mesa-glx                         \
  libgl1-mesa-dev                         \
  libgles2-mesa                           \
  libgles2-mesa-dev                       \
  libglu1-mesa                            \
  libglu1-mesa-dev                        \
  libosmesa6                              \
  mesa-common-dev                         \
  mesa-utils                              \
  libxt6                                  \
  libxt-dev                               \
  libx11-6                                \
  && rm -rf /var/lib/apt/lists/*

RUN mkdir /build

COPY ./lmod.lmodrc.lua /etc/lmod.lmodrc.lua

COPY ./entry.sh /entry.sh

ENTRYPOINT ["/entry.sh"]
