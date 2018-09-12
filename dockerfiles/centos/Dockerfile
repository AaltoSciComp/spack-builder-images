FROM centos:centos7

RUN yum install -y epel-release           \
  && yum update -y                        \
  && yum clean all

RUN yum groups mark install "Development Tools" \
  && yum groups mark convert "Development Tools" \
  && yum groupinstall -y "Development Tools" \
  && yum clean all

# Base dependensies
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
  unzip                                   \
  rsync                                   \
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
  expat                                   \
  freetype                                \
  gl2ps                                   \
  glibc                                   \
  glibc                                   \
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

COPY RPM-GPG-KEY-CSC-GRID-2 /etc/pki/rpm-gpg/RPM-GPG-KEY-CSC-GRID-2
COPY fgislurm.repo /etc/yum.repos.d/fgislurm.repo

RUN yum update -y && yum install -y       \
  libibverbs                              \
  libibverbs-devel                        \
  slurm                                   \
  slurm-devel                             \
  slurm-libpmi                            \
  && yum clean all

# Install system openssl
RUN yum update -y && yum install -y       \
  openssl-devel                           \
  && yum clean all

# Install libffi,libffi-devel for Python3 setuptools
RUN yum update -y && yum install -y       \
  libffi                                  \
  libffi-devel                            \
  && yum clean all

# Install pam-devel for rstudio setuptools
RUN yum update -y && yum install -y       \
  pam-devel                               \
  && yum clean all

RUN mkdir /build

COPY ./lmod.lmodrc.lua /etc/lmod.lmodrc.lua

COPY ./entry.sh /entry.sh

COPY ./spack_timestamps.sh /usr/local/bin/spack_timestamps

RUN chmod +x /usr/local/bin/spack_timestamps

ENTRYPOINT ["/entry.sh"]
