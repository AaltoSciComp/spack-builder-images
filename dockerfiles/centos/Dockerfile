FROM centos:centos7

RUN yum install -y epel-release           \
  && yum update -y                        \
  && yum clean all

RUN yum groupinstall -y "Development Tools" \
  && yum clean all

RUN yum update -y && yum install -y       \
  bash-completion                         \
  cmake                                   \
  curl                                    \
  git                                     \
  Lmod                                    \
  openssh                                 \
  python                                  \
  python-yaml                             \
  tcl                                     \
  wget                                    \
  which                                   \
  && yum clean all

# Paraview dependencies
RUN yum update -y && yum install -y       \
  mesa-dri-drivers                        \
  mesa-filesystem                         \
  mesa-libEGL                             \
  mesa-libEGL-devel                       \
  mesa-libGL                              \
  mesa-libGL-devel                        \
  mesa-libGLES                            \
  mesa-libGLU                             \
  mesa-libGLU-devel                       \
  mesa-libOSMesa                          \
  mesa-libOSMesa-devel                    \
  mesa-libgbm                             \
  mesa-libgbm                             \
  mesa-libglapi                           \
  mesa-private-llvm                       \
  && yum clean all

# More Paraview dependencies
RUN yum update -y && yum install -y       \
  expat                                   \
  freetype                                \
  gl2ps                                   \
  glibc                                   \
  glibc                                   \
  hdf5                                    \
  hdf5-mpich                              \
  hdf5-openmpi                            \
  libICE                                  \
  libSM                                   \
  libX11                                  \
  libXext                                 \
  libXt                                   \
  libXt-devel                             \
  libgcc                                  \
  libjpeg-turbo                           \
  libogg                                  \
  libpng                                  \
  libstdc++                               \
  libtheora                               \
  libtiff                                 \
  libxml2                                 \
  netcdf                                  \
  netcdf-cxx                              \
  paraview-data                           \
  protobuf                                \
  python-libs                             \
  python-matplotlib                       \
  python-pygments                         \
  python-six                              \
  qt                                      \
  qt-devel                                \
  qt-x11                                  \
  zlib                                    \
  && yum clean all

RUN mkdir /build

COPY ./lmod.lmodrc.lua /etc/lmod.lmodrc.lua

COPY ./entry.sh /entry.sh

ENTRYPOINT ["/entry.sh"]
