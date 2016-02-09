#!/bin/sh

set -e
set -u

#User params

#Internal params
RUN_CMD="echo Hello World!" 

if test -t 0; then
  $RUN_CMD

  if [[ $@ ]]; then 
    eval $@
  else 
    export PS1='[\u@\h : \w]\$ '
    /bin/bash
  fi

else
  if [[ $@ ]]; then 
    eval $@
  fi
  $RUN_CMD
fi
