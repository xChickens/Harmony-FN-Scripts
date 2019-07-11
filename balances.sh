#!/bin/bash

# balances.sh - Uses list of addresses in foundational.go and lists their balances
#
rm -f balances.csv
printf "Address,Shard,Balance\n" >> balances.csv

for address in `cat ../internal/genesis/foundational.go | grep Address | cut -d'"' -f4`
do 
    balances=`./wallet balances -address "$address"`

    # Get each balance
    bal0=`echo "$balances" |grep -i "shard 0" |cut -f 2 -d ":" |cut -f1 -d ","`
    bal1=`echo "$balances" |grep -i "shard 1" |cut -f 2 -d ":" |cut -f1 -d ","`
    bal2=`echo "$balances" |grep -i "shard 2" |cut -f 2 -d ":" |cut -f1 -d ","`
    bal3=`echo "$balances" |grep -i "shard 3" |cut -f 2 -d ":" |cut -f1 -d ","`

    printf "$address," >> balances.csv
    if [[ $bal0 != "  0.0000" ]]
        then
        printf "0," >> balances.csv
        printf "$bal0\n" >> balances.csv
    elif [[ $bal1 != "  0.0000" ]]
        then
        printf "1," >> balances.csv
        printf "$bal1\n" >> balances.csv
    elif [[ $bal2 != "  0.0000" ]]
        then
        printf "2," >> balances.csv
        printf "$bal2\n" >> balances.csv
    elif [[ $bal3 != "  0.0000" ]]
        then
        printf "3," >> balances.csv
        printf "$bal3\n" >> balances.csv
    else 
        printf "N/A," >> balances.csv
        printf "N/A\n" >> balances.csv
    fi
done 
