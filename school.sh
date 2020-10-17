#!/bin/bash


cat Property_Tax_Roll.csv | grep "MADISON SCHOOLS"| cut -d ',' -f 7 | { my_sum=0; row_count=0; while read line; do my_sum=$(( $my_sum + $line)); row_count=$(( $row_count + 1 )); done;my_average=$(( $my_sum / $row_count )); echo $my_average; }



