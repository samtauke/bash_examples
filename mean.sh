#!/bin/bash


if [ $# -eq 2 ]; then
	column=$1;
	file=$2;
elif [ $# -eq 1 ]; then
	column=$1;
	file=$(/dev/stdin);
else
	echo "usage: $0 <column> [file.csv]" 1>&2;
	exit 1
fi;



cat $file | tail -n +2 | cut -d ',' -f $column | { my_sum=0; row_count=0; while read line; do my_sum=$(( $my_sum + $line)); row_count=$(( $row_count + 1 )); done;my_average=$(( $my_sum / $row_count )); echo $my_average; }






