#!/bin/bash

#Variables to be updated for each project:
derDir=/Volumes/Yorick/Duraccio_RAD/derivatives

#These may need to be updated depending on what you've called your runs:
scanRuns=(run-1_gonogo_scale run-2_gonogo_scale run-3_gonogo_scale)

#Work:
scanRunLen=${#scanRuns[@]}
cd $derDir


# Loop through subjects
for sub in sub-*; 
    do 
    echo "working on subject: $sub ----------"
    cd ${sub}
    
    #clear out old copies of the motion* files
    if [ -f motion.txt ]; then
        rm motion*
    fi

    # deal with any uneven numbers of TRs across blocks
    unset nTRs
    for i in 1 2 3; do
        nTRs+=`3dinfo -nt run-${i}_gonogo+orig`
        nTRs+=" "
    done

    cat dfile.run-?_gonogo.1D > motion.txt
    1d_tool.py -infile motion.txt -set_run_lengths `echo "$nTRs"` -overwrite -demean -write motion_demean.txt
    1d_tool.py -infile motion_demean.txt -set_run_lengths `echo "$nTRs"` -overwrite -show_censor_count -censor_prev_TR -censor_motion 0.3 motion
    1d_tool.py -infile motion_demean.txt -set_run_lengths `echo "$nTRs"` -overwrite -split_into_pad_runs motion_demean_split
        

	#single-subject regression, hard-coding everything
	if [ ! -f gonogo_stats+tlrc.HEAD ]; then
	
		3dDeconvolve -input run-1_gonogo_scale+tlrc run-2_gonogo_scale+tlrc run-3_gonogo_scale+tlrc \
		 -censor motion_censor.1D \
		 -mask final_anat_mask+tlrc \
		 -polort A \
		 -num_stimts 22 \
		 -stim_file 1 motion_demean_split.r01.1D'[0]'  -stim_base 1  -stim_label 1  r1trans_x \
		 -stim_file 2 motion_demean_split.r01.1D'[1]'  -stim_base 2  -stim_label 2  r1trans_y \
		 -stim_file 3 motion_demean_split.r01.1D'[2]'  -stim_base 3  -stim_label 3  r1trans_z \
		 -stim_file 4 motion_demean_split.r01.1D'[3]'  -stim_base 4  -stim_label 4  r1rot_x \
		 -stim_file 5 motion_demean_split.r01.1D'[4]'  -stim_base 5  -stim_label 5  r1rot_y \
		 -stim_file 6 motion_demean_split.r01.1D'[5]'  -stim_base 6  -stim_label 6  r1rot_z \
		 -stim_file 7 motion_demean_split.r02.1D'[0]'  -stim_base 7  -stim_label 7  r2trans_x \
		 -stim_file 8 motion_demean_split.r02.1D'[1]'  -stim_base 8  -stim_label 8  r2trans_y \
		 -stim_file 9 motion_demean_split.r02.1D'[2]'  -stim_base 9  -stim_label 9  r2trans_z \
		 -stim_file 10 motion_demean_split.r02.1D'[3]' -stim_base 10 -stim_label 10 r2rot_x \
		 -stim_file 11 motion_demean_split.r02.1D'[4]' -stim_base 11 -stim_label 11 r2rot_y \
		 -stim_file 12 motion_demean_split.r02.1D'[5]' -stim_base 12 -stim_label 12 r2rot_z \
		 -stim_file 13 motion_demean_split.r03.1D'[0]' -stim_base 13 -stim_label 13 r3trans_x \
		 -stim_file 14 motion_demean_split.r03.1D'[1]' -stim_base 14 -stim_label 14 r3trans_y \
		 -stim_file 15 motion_demean_split.r03.1D'[2]' -stim_base 15 -stim_label 15 r3trans_z \
		 -stim_file 16 motion_demean_split.r03.1D'[3]' -stim_base 16 -stim_label 16 r3rot_x \
		 -stim_file 17 motion_demean_split.r03.1D'[4]' -stim_base 17 -stim_label 17 r3rot_y \
		 -stim_file 18 motion_demean_split.r03.1D'[5]' -stim_base 18 -stim_label 18 r3rot_z \
		 -stim_times 19 ${sub}_Go_Correct.txt     'BLOCK(.5,1)' -stim_label 19 go_corr \
		 -stim_times 20 ${sub}_Go_Incorrect.txt   'BLOCK(.5,1)' -stim_label 20 go_incorr \
		 -stim_times 21 ${sub}_NoGo_Correct.txt   'BLOCK(.5,1)' -stim_label 21 nogo_corr \
		 -stim_times 22 ${sub}_NoGo_Incorrect.txt 'BLOCK(.5,1)' -stim_label 22 nogo_incorr \
         -gltsym 'SYM: +nogo_corr -go_corr' -glt_label 1 nogo_corr-go_corr \
		 -tout \
		 -x1D X.gonogo.xmat.1D \
		 -xjpeg X.gonogo.jpg \
		 -errts gonogo_errts \
		 -bucket gonogo_stats \
		 -jobs 2
	fi

	if [ ! -f gonogo_stats_blur8+tlrc.HEAD ]; then
	   3dmerge -1blur_fwhm 8.0 -doall -prefix gonogo_stats_blur8 gonogo_stats+tlrc
	fi
	if [ ! -f gonogo_errts_blur8+tlrc.HEAD ]; then
	   3dmerge -1blur_fwhm 8.0 -doall -prefix gonogo_errts_blur8 gonogo_errts+tlrc
	fi
    cd $derDir

done
