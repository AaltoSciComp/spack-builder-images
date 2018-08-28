#!/bin/bash

PUSH=1
IGNORE_CACHE=''

for ARG in "$@"
do
case $ARG in 
  -p|--push)
  PUSH=0
  shift
  ;;
  -i|--ignore-cache)
  IGNORE_CACHE=--no-cache
  shift
  ;;
esac
done

if [ "$#" -gt 0 ]; then
  OSFOLDERS="$@"
  OSFOLDERS="${OSFOLDERS[@]/#/dockerfiles\/}"
else
  OSFOLDERS=$(ls -d dockerfiles/*)
fi

for OSFOLDER in $OSFOLDERS; do
  OS=$(basename $OSFOLDER)
  if [ -f $OSFOLDER/Dockerfile ]; then
    BUILD_RESULT=1
    docker build $IGNORE_CACHE -t aaltoscienceit/spack-builder-images:$OS $OSFOLDER
    BUILD_RESULT=$?
    if [ $BUILD_RESULT -eq 0 ]; then
      echo 'Build of "'$OS'" was successful.'
    else
      echo 'Build of "'$OS'" failed.'
    fi
    if [ $PUSH -eq 0 ]; then
      if [ $BUILD_RESULT -eq 0 ]; then
        docker push aaltoscienceit/spack-builder-images:$OS
      else
        echo 'Build for "'$OS'" failed, will not push.'
      fi
    fi
  fi
done

