#!/bin/bash

for dir in `ls conf`
do
    sh ./conf/${dir}/conf.sh
done
