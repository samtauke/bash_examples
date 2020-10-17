#!/bin/bash

directory=$1;
bytes=$2;


give_usage(){
	echo "usage: $0 <dir> <n>" 1>&2
}


if [ ! -d $directory ]; then 
       echo "ERROR: input is not a directory" 1>&2; 
       give_usage;
       exit 1

fi;
if [ $# -ne 2 ]; then
	echo "ERROR: wrong number of inputs" 1>&2;
	give_usage;
	exit 1
fi;




for file in $(find $directory -type f -size +$2c); do
	rm $file;
done;





