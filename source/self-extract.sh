#!/bin/bash

if [ $# -ne 1 ]; then
    echo "Please specify path to extract"
    exit 1
fi

RESULT=$1
SOURCE=$(readlink -f ${BASH_SOURCE[0]})

mkdir -p $RESULT
pushd $RESULT
sed "0,/^#EOF#$/d" ${SOURCE} | tar xvz; exit 0
popd
#EOF#
