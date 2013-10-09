#!/bin/sh

#Clean Up Folder
rm -f files.txt trimmed_files.txt classes.txt only_commas.txt spaced_classes.txt reordered_classes.txt force.csv

#Collect All Classes in Each File in ../lib
grep -r '../lib' -e 'class' > files.txt

#Trim All Whitespace
tr -d ' \t\r\f' < files.txt > trimmed_files.txt

#Remove Directory Information
egrep -o "(class\S+)" trimmed_files.txt | cut -c 6- > classes.txt

#Add Spaces for Future Processing
sed 's/</ < /g' classes.txt >> spaced_classes.txt

#Reverse Each Line
awk '{ for (i=NF; i>=1; i--) printf (i!=1) ? $i OFS : $i "\n" }' spaced_classes.txt >> reordered_classes.txt

#Create force.csv file
echo 'source,target' > force.csv
exec < reordered_classes.txt
while read LINE; do
	if [[ $LINE == *\<* ]]; then
		Y=0
		for WORD in $LINE; do
			if [ $Y == 0 ]
				then
				PARENT=$WORD
			elif [ $Y == 2 ]
				then
				CHILD=$WORD
			fi
			Y=$((Y+1))
		done
		echo "$PARENT,$CHILD" >> force.csv
		echo "Ruby,$PARENT" >> force.csv
	else
		echo "Ruby,$LINE" >> force.csv
	fi
done

open index.html
rm -f files.txt trimmed_files.txt classes.txt only_commas.txt spaced_classes.txt reordered_classes.txt
