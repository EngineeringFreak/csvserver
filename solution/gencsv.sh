#!/bin/bash
touch inputFile.txt
chmod 777 inputFile.txt
exec > inputFile.txt
for j in {0..10}
do
echo "$j, $RANDOM" 
done