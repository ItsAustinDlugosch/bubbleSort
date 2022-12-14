#!/bin/bash
rm bubbleSort.csv
rm ~/www/Digital\ Portfolio/bubbleSort.csv
echo -e "Sort Name,Date and Time,Test Number,Git Branch,Git Hash,Command Line Executed,Text File,Count of Strings,Type of File,Execution Time (real, to nearest ms)" > bubbleSort.csv

cd testWords
for order in ordered.txt reverse-ordered.txt random.txt
do
    echo Trying $order... 
    for i in 0 1 2 3 4 5
    do
        let count=10**$i
        echo testing $count numbers
        for j in 1 2 3 4 5
        do
            cat $order | head -n $count > temp.txt
            time=$( TIMEFORMAT=%R; { time cat temp.txt | ../bubbleSort > /dev/null; } 2>&1)
            date=$(date +"%D %T")
            file="${order}10e${i}.txt" #fake file for requirement
            echo -e "bubbleSort,${date},${j},main,1da23fd59dff3c1c40999d0af8b14131c519a50f,time cat ${file} | ./bubbleSort > /dev/null,${file},${count},${order},${time}" >> ../bubbleSort.csv       
        done
    done
done
rm temp.txt
cp ../bubbleSort.csv ~/www/Digital\ Portfolio/bubbleSort.csv
chmod a+rx -R ~/www/Digital\ Portfolio
echo DONE - open bubbleSort.csv, or go to your Digital Portfolio/bubbleSort.csv to download the file       
echo Change the branch, hash, command, and file name to your liking.
