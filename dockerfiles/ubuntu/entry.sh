#!/bin/bash

#export LMOD_RC=/etc/lmod.lmodrc.lua

[[ -f /opt/spack/share/spack/setup-env.sh ]] && . /opt/spack/share/spack/setup-env.sh

[[ -f /opt/local/etc/bash_completion ]] && . /opt/local/etc/bash_completion

if [[ "$#" -eq 0 ]]; then 
  cd /build
  python install.py
  exit $?
else
  [[ -f /usr/share/lmod/5.8/init/bash ]] && . /usr/share/lmod/5.8/init/bash

  _python_command=$(printf  "%s\\\n%s\\\n%s" \
  "print(\'_sp_tcl_root={0}\'.format(spack.util.path.canonicalize_path(spack.config.get_config(\'config\').get(\'module_roots\', {}).get(\'tcl\'))))" \
  "print(\'_sp_lmod_root={0}\'.format(spack.util.path.canonicalize_path(spack.config.get_config(\'config\').get(\'module_roots\', {}).get(\'lmod\'))))"
  )

  _assignment_command=$(spack-python -c "exec('${_python_command}')")
  eval ${_assignment_command}
  module unuse "${_sp_tcl_root%/}/$_sp_sys_type"
  module use "${_sp_lmod_root%/}/$_sp_sys_type"

  exec "$@"
fi
