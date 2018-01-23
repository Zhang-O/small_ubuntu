#!/usr/bin/env bash

echo "$0 $@" #print the command line for logging
set -e

#if [ $# != 2 ]; then
#    echo "usage: detect_main.sh <logidr> <processNum>"
#    echo "e.g.: detect_main.sh ./log 40"
#    exit 1;
#fi

logdir="./log"
#logdir=$1
if [ -d ${logdir} ]
then
    echo "traverse the dir :"${logdir}
else
    echo ${logdir}" is not a dir "
    exit
fi


while true
do
    for i in `ls ${logdir}`;
    do
            echo "#####the ${i} th process log :#####"
        echo ${i}
#        cat ${logdir}/${i} | grep -iv "ERROR"
        awk '/ERROR/' ${logdir}/${i}

#        tail -1 $logdir/${i}
    done

    sleep 3

done
