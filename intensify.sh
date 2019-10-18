#!/bin/bash

# Requires 'imagemagick' is installed in the path
# first parameter is the input file
# second parameter is the output file
# jitter distance can be modified as well, but 3 or 4 is usually good

fileToIntensify=$1
fileOutput=$2
tempFileName=intensifier-temp
jitter=4
jitterRange=$((($jitter*2)+1))

if [[ $fileToIntensify == *.gif ]];
then
  convert $fileToIntensify $tempFileName.raw.png
else
  for i in {0..9}
  do
    cp $fileToIntensify $tempFileName.raw-$i.png
  done
fi

rawPartCount=$(ls -dq $tempFileName.raw-* | wc -l)

for ((i=0;i<rawPartCount;i++))
do
  ecks=$(($RANDOM%$jitterRange-$jitter))
  why=$(($RANDOM%$jitterRange-$jitter))

  if [ $ecks -ge 0 ]; then ecks="+"$ecks; fi;
  if [ $why -ge 0 ]; then why="+"$why; fi;

  echo $ecks$why
  convert -page $ecks$why $tempFileName.raw-$i.png -background none -flatten $tempFileName.$(($i + 1))
done

rm $tempFileName.raw-*
convert -delay 3 -dispose Background +page $tempFileName.* -colors 128 -loop 0 $fileOutput
rm $tempFileName.*
