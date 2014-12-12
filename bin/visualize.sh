#!/bin/sh

grep -r 'lib' -e 'class' > files.txt
cut -d ' ' -f2- files.txt > classes.txt
echo 'source,target' > force.csv
echo 'BasicObject,Object' >> force.csv

exec < classes.txt
while read line
do
	if [[ $line == *\<* ]]
	then
			out=""
			for w in $line
			do
				out="$w $out"
			done
	echo $out | tr -d ' ' | tr '<' ',' >> force.csv
	else
		echo "Object,$line" >> force.csv
	fi
done

rm files.txt
rm classes.txt