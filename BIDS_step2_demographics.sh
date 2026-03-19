#!/bin/bash



rawDir=/Volumes/Yorick/Duraccio_RAD/rawdata
dicomDir=/Users/bkirwan/Library/CloudStorage/Box-Box/Duraccio_RAD/dicoms
session=gonogo


cd $rawDir
echo -e "participant_id\tage\tsex" > participants.tsv

for i in s*; do
	age=`dicom_hdr ${dicomDir}/${i}/ses-${session}/t1*/IM*001.dcm | grep "0010 1010" | sed 's/.*\///' | sed 's/[^0-9]//'`
	sex=`dicom_hdr ${dicomDir}/${i}/ses-${session}/t1*/IM*001.dcm | grep "0010 0040" | sed 's/.*\///'`
	echo -e "${i}\t${age:1:2}\t${sex}" >> participants.tsv
done


