#!/bin/bash

if [ -e /usr/share/lmod/5.8/init/bash ]; then
  source /usr/share/lmod/5.8/init/bash
fi
if [ -e /opt/spack/share/spack/setup-env.sh ]; then
  source /opt/spack/share/spack/setup-env.sh
fi


if [[ "$#" -eq 0 ]]; then 
  cd /build
  python install.py
  exit 0
else
  exec "$@"
fi
