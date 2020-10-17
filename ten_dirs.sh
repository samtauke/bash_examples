#!/bin/bash

rm -rf ten;

mkdir ten;

for i in `seq -w 1 10`; do
	mkdir ten/dir$i;

	for j in `seq 1 4`; do
		yes $j | head -n $j > ten/dir$i/file$j.txt;
	done;
done;



