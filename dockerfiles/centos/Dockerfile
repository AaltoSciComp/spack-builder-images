FROM centos:centos7

RUN yum update -y && yum install -y       \
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
  tcl                                     \
  bash-completion                         \
  && yum clean all

RUN yum update -y && yum install -y       \
  mesa-libGL                              \
  mesa-libGL-devel                        \
  mesa-libEGL                             \
  mesa-libEGL-devel                       \
  mesa-libGLU                             \
  mesa-libGLU-devel                       \
  mesa-libOSMesa                          \
  mesa-libOSMesa-devel                    \
  mesa-libgbm                             \
  mesa-filesystem                         \
  mesa-private-llvm                       \
  mesa-libgbm                             \
  mesa-libglapi                           \
  mesa-libGLES                            \
  mesa-dri-drivers                        \
  && yum clean all

# Paraview dependencies
RUN yum update -y && yum install -y       \
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
  && yum clean all

RUN mkdir /build

COPY ./lmod.lmodrc.lua /etc/lmod.lmodrc.lua

COPY ./entry.sh /entry.sh

ENTRYPOINT ["/entry.sh"]
