#!/bin/bash


my_count=0;

for i in `seq 1000 1 2000`; do
	if grep -q "2" <<< "$i"; then 
		my_count=$(( $my_count + 1 ));
	fi;
done;

echo $my_count;


