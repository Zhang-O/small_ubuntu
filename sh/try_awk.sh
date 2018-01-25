#!/usr/bin/env bash

#awk '$3>0{print $1, $2*$3 $0}' ./1.txt
#awk -f ./progfile ./1.txt
#awk '/Dan/' ./1.txt


#awk '{ print NF, NR, $1, $NF }' ./1.txt

#awk '{printf("%6.2f  %s \n", $2*$3, $0)}' ./1.txt | sort -n

#awk 'BEGIN { print "Name    RATE    HOURS"; print ""}
#      { print }' ./1.txt


#sed -n '
#h;n;H;x
#s/\n/, /
#/Paulo/!b Print
#s/^/- /
#:Print
#p' books2.txt


cat ./part1_log_t91.txt | sed -n 's/\(part1[a-zA-Z0-9\/]\+\)\1/\1/ p'