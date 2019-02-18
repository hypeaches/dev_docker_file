#!/bin/bash

SCRIPT_DIR=$(cd $(dirname ${BASH_SOURCE[0]}); pwd)

for dir in `ls ${SCRIPT_DIR}/conf`
do
    sh ${SCRIPT_DIR}/conf/${dir}/conf.sh
done
