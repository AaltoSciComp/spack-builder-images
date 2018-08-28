FROM ubuntu:xenial

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
  unzip                                   \
  tcl                                     \
  bash-completion                         \
  && rm -rf /var/lib/apt/lists/*


# Paraview dependencies
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
  tcl8.5                                  \
  libxt6                                  \
  libavcodec-ffmpeg56                     \
  libavformat-ffmpeg56                    \
  libavutil-ffmpeg54                      \
  libc6                                   \
  libexpat1                               \
  libfreetype6                            \
  libgcc1                                 \
  libgl1-mesa-glx                         \
  libgl2ps0                               \
  libhdf5-10                              \
  libjpeg8                                \
  libjsoncpp1                             \
  libnetcdf-c++4                          \
  libnetcdf11                             \
  libogg0                                 \
  libopenmpi1.10                          \
  libpng12-0                              \
  libpython2.7                            \
  libqt4-help                             \
  libqt4-network                          \
  libqtcore4                              \
  libqtgui4                               \
  libstdc++6                              \
  libswscale-ffmpeg3                      \
  libtheora0                              \
  libtiff5                                \
  libx11-6                                \
  libxml2                                 \
  libxt6                                  \
  zlib1g                                  \
  python-matplotlib                       \
  python-autobahn                         \
  python-mpi4py                           \
  python-six                              \
  python-twisted                          \
  && rm -rf /var/lib/apt/lists/*

RUN apt-get update && \
  apt-get dist-upgrade -y \
  && rm -rf /var/lib/apt/lists/*

# GCC dependencies
RUN apt-get update && apt-get install -y  \
  m4 \
  perl \
  && rm -rf /var/lib/apt/lists/*

# For openssl development headers
RUN apt-get update && apt-get install -y  \
  libssl-dev \
  && rm -rf /var/lib/apt/lists/*

RUN mkdir /build

COPY ./lmod.lmodrc.lua /etc/lmod.lmodrc.lua

COPY ./entry.sh /entry.sh

ENTRYPOINT ["/entry.sh"]

