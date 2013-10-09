#!/bin/sh

grep -r 'lib' -e 'class' > files.txt
cut -d ' ' -f2- files.txt > classes.txt
echo 'source,target,value' > force.csv
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
		echo "Ruby,$line,1" >> force.csv
	fi
done

open index.html
#rm files.txt
#rm classes.txt
#force.csv
