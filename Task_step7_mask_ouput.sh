#!/bin/bash

#script to use a mask (usually created from a group analysis) and read out mean betas for
#for each subject from individual subjects' regressions.
#
#assumes mask and 3dDeconvolve outputs are on the same spatial grid

#Variables to update every time:
derDir=/Volumes/Yorick/Duraccio_RAD/derivatives
outDir=${derDir}/grp-2025-08-27
deconv=gonogo_stats_blur8+tlrc

# List of masks to loop over
masks=(
  MVM1_ME_DLMOd_p.01_k55_a.05_mask+tlrc
  MVM1_ME_DURd_p.01_k55_a.05_mask+tlrc
  MVM1_ME_SJLd_p.01_k55_a.05_mask+tlrc
  MVM1_ME_task_p.01_k55_a.05_mask+tlrc
)

#If you are following BIDS format, this should be constant
sublist=("${derDir}"/sub-*)

#work:
cd "$outDir" || exit 1

# Loop over masks
for mask in "${masks[@]}"; do
  # Clear out old output for this mask
  if [ -f "${mask}.txt" ]; then
    rm "${mask}.txt"
  fi

  echo "Processing mask: $mask"

  # Loop through subjects and append ROI stats
  for i in "${sublist[@]}"; do
    3dROIstats -mask "$mask" -1DRformat "${i}/${deconv}" >> "${mask}.txt"
    # Alternative with longnames:
    # 3dROIstats -mask "$mask" -longnames "${i}/${deconv}" >> "${mask}.txt"
  done
done

