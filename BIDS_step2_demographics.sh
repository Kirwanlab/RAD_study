#!/bin/bash



rawDir=[path/to/BIDS/directory]
dicomDir=[path/to/dicom/directory]
session=gonogo


cd $rawDir
echo -e "participant_id\tage\tsex" > participants.tsv

for i in s*; do
	age=`dicom_hdr ${dicomDir}/${i}/ses-${session}/t1*/IM*001.dcm | grep "0010 1010" | sed 's/.*\///' | sed 's/[^0-9]//'`
	sex=`dicom_hdr ${dicomDir}/${i}/ses-${session}/t1*/IM*001.dcm | grep "0010 0040" | sed 's/.*\///'`
	echo -e "${i}\t${age:1:2}\t${sex}" >> participants.tsv
done


