#!/bin/bash

# 3dClustSim in preparation for Group analysis 
#
# Assumes things are in BIDS format, datasets have been blurred
#
# This script was written to run on a local machine (i.e., not on a cluster) with 12 cores available.
# 
# requires ANFI and ITK-SNAP (https://sourceforge.net/projects/itk-snap/)

parDir=/Volumes/Yorick/Duraccio_RAD
derDir=${parDir}/derivatives
refFile=${derDir}/sub-001/gonogo_stats+tlrc			# reference file, for finding dimensions etc
pref=gonogo
tempDir=${parDir}/code/Templates/vold2_mni    				# desired template
priorDir=${tempDir}/priors_ACT						# location of atropos priors
mask=Intersection_GM_mask+tlrc
nJobs=12 #number of cores to devote to this. More is better.
thr=0.3	
outDir=${derDir}/grp-2025-08-08



if [ ! -d $outDir ]; then
	mkdir -p $outDir
fi

cd $outDir

### mask stuff  ###
# intersection mask
if [ ! -f Group_epi_mask.nii.gz ]; then

	for i in ${derDir}/sub-*; do
		list+="${i}/mask_epi_anat+tlrc "
	done

	3dMean -prefix ${outDir}/Group_epi_mean.nii.gz $list
	3dmask_tool -input $list -frac $thr -prefix ${outDir}/Group_epi_mask.nii.gz
fi


# make $mask
if [ ! -f ${mask}.HEAD ]; then

	# GM mask
	c3d ${priorDir}/Prior2.nii.gz ${priorDir}/Prior4.nii.gz -add -o tmp_Prior_GM.nii.gz
	3dresample -master $refFile -rmode NN -input tmp_Prior_GM.nii.gz -prefix tmp_Template_GM_mask.nii.gz

	# combine GM and intersection mask
	c3d tmp_Template_GM_mask.nii.gz Group_epi_mask.nii.gz -multiply -o tmp_Intersection_GM_prob_mask.nii.gz
	c3d tmp_Intersection_GM_prob_mask.nii.gz -thresh 0.1 1 1 0 -o tmp_Intersection_GM_mask.nii.gz
	3dcopy tmp_Intersection_GM_mask.nii.gz $mask
	rm tmp*
fi


# get template
if [ ! -f vold2_mni_brain+tlrc.HEAD ]; then
	cp ${tempDir}/vold2_mni_brain+tlrc* .
fi
	
### Estimate Blur ###
print=ACF_raw.txt

if [ ! -s $print ]; then
	for k in ${derDir}/sub*; do

		# parameter estimate
		3dFWHMx -mask $mask -input ${k}/${pref}_errts_blur8+tlrc -acf >> $print
	done
fi


# simulate noise, determine thresholds
if [ ! -s ACF_MC.txt ]; then

	sed '/ 0  0  0    0/d' $print > tmp

	xA=`awk '{ total += $1 } END { print total/NR }' tmp`
	xB=`awk '{ total += $2 } END { print total/NR }' tmp`
	xC=`awk '{ total += $3 } END { print total/NR }' tmp`

	3dClustSim -mask $mask -pthr .01 .001 .0001 -athr .05 .01 .005 .001 .0005 .0001 -iter 100000 -acf $xA $xB $xC > ACF_MC.txt
	rm tmp
fi
			
			
