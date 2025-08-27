#!/bin/bash

# Group analysis for the go/no-go task
#
# Assumes things are in BIDS format, datasets have been blurred, you've run clustsim and that you have a mask named 'Intersection_GM_mask'
#
# This script was written to run on a local machine (i.e., not on a cluster) with 8 cores available.
# 


parDir=/Volumes/Yorick/Duraccio_RAD
derDir=${parDir}/derivatives
mask=Intersection_GM_mask+tlrc
nJobs=8 #number of jobs to devote to processing
task=gonogo


outDir=${derDir}/grp-2025-08-08

if [ ! -d $outDir ]; then
	mkdir -p $outDir
fi

cd $outDir

### t-test ###

outputPrefix=ttest_nogocorr-gocorr

if [ ! -f ${outputPrefix}+tlrc.HEAD ]; then
  3dttest++ -prefix $outputPrefix\
	-mask $mask \
	-paired \
	-Clustsim \
	-BminusA \
	-setA \
	${derDir}/sub-001/${task}_stats_blur8+tlrc'[1]' \
	${derDir}/sub-002/${task}_stats_blur8+tlrc'[1]' \
	${derDir}/sub-003/${task}_stats_blur8+tlrc'[1]' \
	${derDir}/sub-004/${task}_stats_blur8+tlrc'[1]' \
	${derDir}/sub-005/${task}_stats_blur8+tlrc'[1]' \
	${derDir}/sub-006/${task}_stats_blur8+tlrc'[1]' \
	${derDir}/sub-007/${task}_stats_blur8+tlrc'[1]' \
	${derDir}/sub-008/${task}_stats_blur8+tlrc'[1]' \
	${derDir}/sub-010/${task}_stats_blur8+tlrc'[1]' \
	${derDir}/sub-011/${task}_stats_blur8+tlrc'[1]' \
	${derDir}/sub-013/${task}_stats_blur8+tlrc'[1]' \
	${derDir}/sub-014/${task}_stats_blur8+tlrc'[1]' \
	${derDir}/sub-015/${task}_stats_blur8+tlrc'[1]' \
	${derDir}/sub-016/${task}_stats_blur8+tlrc'[1]' \
	${derDir}/sub-018/${task}_stats_blur8+tlrc'[1]' \
	${derDir}/sub-019/${task}_stats_blur8+tlrc'[1]' \
	${derDir}/sub-020/${task}_stats_blur8+tlrc'[1]' \
	${derDir}/sub-021/${task}_stats_blur8+tlrc'[1]' \
	${derDir}/sub-022/${task}_stats_blur8+tlrc'[1]' \
	${derDir}/sub-023/${task}_stats_blur8+tlrc'[1]' \
	${derDir}/sub-024/${task}_stats_blur8+tlrc'[1]' \
	${derDir}/sub-026/${task}_stats_blur8+tlrc'[1]' \
	${derDir}/sub-028/${task}_stats_blur8+tlrc'[1]' \
	${derDir}/sub-029/${task}_stats_blur8+tlrc'[1]' \
	${derDir}/sub-030/${task}_stats_blur8+tlrc'[1]' \
	${derDir}/sub-032/${task}_stats_blur8+tlrc'[1]' \
	${derDir}/sub-035/${task}_stats_blur8+tlrc'[1]' \
	${derDir}/sub-036/${task}_stats_blur8+tlrc'[1]' \
	${derDir}/sub-037/${task}_stats_blur8+tlrc'[1]' \
	${derDir}/sub-038/${task}_stats_blur8+tlrc'[1]' \
	${derDir}/sub-039/${task}_stats_blur8+tlrc'[1]' \
	${derDir}/sub-040/${task}_stats_blur8+tlrc'[1]' \
	${derDir}/sub-041/${task}_stats_blur8+tlrc'[1]' \
	${derDir}/sub-042/${task}_stats_blur8+tlrc'[1]' \
	${derDir}/sub-043/${task}_stats_blur8+tlrc'[1]' \
	${derDir}/sub-046/${task}_stats_blur8+tlrc'[1]' \
	${derDir}/sub-047/${task}_stats_blur8+tlrc'[1]' \
	${derDir}/sub-049/${task}_stats_blur8+tlrc'[1]' \
	${derDir}/sub-050/${task}_stats_blur8+tlrc'[1]' \
	${derDir}/sub-051/${task}_stats_blur8+tlrc'[1]' \
	${derDir}/sub-052/${task}_stats_blur8+tlrc'[1]' \
	${derDir}/sub-054/${task}_stats_blur8+tlrc'[1]' \
	-setB \
	${derDir}/sub-001/${task}_stats_blur8+tlrc'[5]' \
	${derDir}/sub-002/${task}_stats_blur8+tlrc'[5]' \
	${derDir}/sub-003/${task}_stats_blur8+tlrc'[5]' \
	${derDir}/sub-004/${task}_stats_blur8+tlrc'[5]' \
	${derDir}/sub-005/${task}_stats_blur8+tlrc'[5]' \
	${derDir}/sub-006/${task}_stats_blur8+tlrc'[5]' \
	${derDir}/sub-007/${task}_stats_blur8+tlrc'[5]' \
	${derDir}/sub-008/${task}_stats_blur8+tlrc'[5]' \
	${derDir}/sub-010/${task}_stats_blur8+tlrc'[5]' \
	${derDir}/sub-011/${task}_stats_blur8+tlrc'[5]' \
	${derDir}/sub-013/${task}_stats_blur8+tlrc'[5]' \
	${derDir}/sub-014/${task}_stats_blur8+tlrc'[5]' \
	${derDir}/sub-015/${task}_stats_blur8+tlrc'[5]' \
	${derDir}/sub-016/${task}_stats_blur8+tlrc'[5]' \
	${derDir}/sub-018/${task}_stats_blur8+tlrc'[5]' \
	${derDir}/sub-019/${task}_stats_blur8+tlrc'[5]' \
	${derDir}/sub-020/${task}_stats_blur8+tlrc'[5]' \
	${derDir}/sub-021/${task}_stats_blur8+tlrc'[5]' \
	${derDir}/sub-022/${task}_stats_blur8+tlrc'[5]' \
	${derDir}/sub-023/${task}_stats_blur8+tlrc'[5]' \
	${derDir}/sub-024/${task}_stats_blur8+tlrc'[5]' \
	${derDir}/sub-026/${task}_stats_blur8+tlrc'[5]' \
	${derDir}/sub-028/${task}_stats_blur8+tlrc'[5]' \
	${derDir}/sub-029/${task}_stats_blur8+tlrc'[5]' \
	${derDir}/sub-030/${task}_stats_blur8+tlrc'[5]' \
	${derDir}/sub-032/${task}_stats_blur8+tlrc'[5]' \
	${derDir}/sub-035/${task}_stats_blur8+tlrc'[5]' \
	${derDir}/sub-036/${task}_stats_blur8+tlrc'[5]' \
	${derDir}/sub-037/${task}_stats_blur8+tlrc'[5]' \
	${derDir}/sub-038/${task}_stats_blur8+tlrc'[5]' \
	${derDir}/sub-039/${task}_stats_blur8+tlrc'[5]' \
	${derDir}/sub-040/${task}_stats_blur8+tlrc'[5]' \
	${derDir}/sub-041/${task}_stats_blur8+tlrc'[5]' \
	${derDir}/sub-042/${task}_stats_blur8+tlrc'[5]' \
	${derDir}/sub-043/${task}_stats_blur8+tlrc'[5]' \
	${derDir}/sub-046/${task}_stats_blur8+tlrc'[5]' \
	${derDir}/sub-047/${task}_stats_blur8+tlrc'[5]' \
	${derDir}/sub-049/${task}_stats_blur8+tlrc'[5]' \
	${derDir}/sub-050/${task}_stats_blur8+tlrc'[5]' \
	${derDir}/sub-051/${task}_stats_blur8+tlrc'[5]' \
	${derDir}/sub-052/${task}_stats_blur8+tlrc'[5]' \
	${derDir}/sub-054/${task}_stats_blur8+tlrc'[5]'
fi


	
	
