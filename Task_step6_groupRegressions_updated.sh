#!/bin/bash

# Regression analyses
derDir=/Volumes/Yorick/Duraccio_RAD/derivatives
outDir=${derDir}/grp-2025-12-04

mask=Intersection_GM_mask+tlrc

cd $outDir

# Regression 1: circadian misalignment

outPre=MVM1_CMI

if [ ! -f ${outDir}/${outPre}+tlrc.HEAD ]; then
	3dMVM -prefix $outPre \
	-jobs 8 \
	-mask $mask \
	-bsVars CMI \
	-wsVars taskConds \
	-qVars CMI \
	-dataTable \
	Subj       CMI    taskConds    InputFile \
	sub-001    62    go    ${derDir}/sub-001/gonogo_stats_blur8+tlrc'[1]' \
	sub-001    62    nogo  ${derDir}/sub-001/gonogo_stats_blur8+tlrc'[5]' \
	sub-002    50    go    ${derDir}/sub-002/gonogo_stats_blur8+tlrc'[1]' \
	sub-002    50    nogo  ${derDir}/sub-002/gonogo_stats_blur8+tlrc'[5]' \
	sub-003    116   go    ${derDir}/sub-003/gonogo_stats_blur8+tlrc'[1]' \
	sub-003    116   nogo  ${derDir}/sub-003/gonogo_stats_blur8+tlrc'[5]' \
	sub-004    47    go    ${derDir}/sub-004/gonogo_stats_blur8+tlrc'[1]' \
	sub-004    47    nogo  ${derDir}/sub-004/gonogo_stats_blur8+tlrc'[5]' \
	sub-005    39    go    ${derDir}/sub-005/gonogo_stats_blur8+tlrc'[1]' \
	sub-005    39    nogo  ${derDir}/sub-005/gonogo_stats_blur8+tlrc'[5]' \
	sub-006    95    go    ${derDir}/sub-006/gonogo_stats_blur8+tlrc'[1]' \
	sub-006    95    nogo  ${derDir}/sub-006/gonogo_stats_blur8+tlrc'[5]' \
	sub-007    22    go    ${derDir}/sub-007/gonogo_stats_blur8+tlrc'[1]' \
	sub-007    22    nogo  ${derDir}/sub-007/gonogo_stats_blur8+tlrc'[5]' \
	sub-008    163   go    ${derDir}/sub-008/gonogo_stats_blur8+tlrc'[1]' \
	sub-008    163   nogo  ${derDir}/sub-008/gonogo_stats_blur8+tlrc'[5]' \
	sub-010    40    go    ${derDir}/sub-010/gonogo_stats_blur8+tlrc'[1]' \
	sub-010    40    nogo  ${derDir}/sub-010/gonogo_stats_blur8+tlrc'[5]' \
	sub-011    170   go    ${derDir}/sub-011/gonogo_stats_blur8+tlrc'[1]' \
	sub-011    170   nogo  ${derDir}/sub-011/gonogo_stats_blur8+tlrc'[5]' \
	sub-013    206   go    ${derDir}/sub-013/gonogo_stats_blur8+tlrc'[1]' \
	sub-013    206   nogo  ${derDir}/sub-013/gonogo_stats_blur8+tlrc'[5]' \
	sub-014    221   go    ${derDir}/sub-014/gonogo_stats_blur8+tlrc'[1]' \
	sub-014    221   nogo  ${derDir}/sub-014/gonogo_stats_blur8+tlrc'[5]' \
	sub-015    146   go    ${derDir}/sub-015/gonogo_stats_blur8+tlrc'[1]' \
	sub-015    146   nogo  ${derDir}/sub-015/gonogo_stats_blur8+tlrc'[5]' \
	sub-016    74    go    ${derDir}/sub-016/gonogo_stats_blur8+tlrc'[1]' \
	sub-016    74    nogo  ${derDir}/sub-016/gonogo_stats_blur8+tlrc'[5]' \
	sub-018    97    go    ${derDir}/sub-018/gonogo_stats_blur8+tlrc'[1]' \
	sub-018    97    nogo  ${derDir}/sub-018/gonogo_stats_blur8+tlrc'[5]' \
	sub-019    60    go    ${derDir}/sub-019/gonogo_stats_blur8+tlrc'[1]' \
	sub-019    60    nogo  ${derDir}/sub-019/gonogo_stats_blur8+tlrc'[5]' \
	sub-020    210   go    ${derDir}/sub-020/gonogo_stats_blur8+tlrc'[1]' \
	sub-020    210   nogo  ${derDir}/sub-020/gonogo_stats_blur8+tlrc'[5]' \
	sub-022    135   go    ${derDir}/sub-022/gonogo_stats_blur8+tlrc'[1]' \
	sub-022    135   nogo  ${derDir}/sub-022/gonogo_stats_blur8+tlrc'[5]' \
	sub-023    70    go    ${derDir}/sub-023/gonogo_stats_blur8+tlrc'[1]' \
	sub-023    70    nogo  ${derDir}/sub-023/gonogo_stats_blur8+tlrc'[5]' \
	sub-024    208   go    ${derDir}/sub-024/gonogo_stats_blur8+tlrc'[1]' \
	sub-024    208   nogo  ${derDir}/sub-024/gonogo_stats_blur8+tlrc'[5]' \
	sub-026    9     go    ${derDir}/sub-026/gonogo_stats_blur8+tlrc'[1]' \
	sub-026    9     nogo  ${derDir}/sub-026/gonogo_stats_blur8+tlrc'[5]' \
	sub-028    73    go    ${derDir}/sub-028/gonogo_stats_blur8+tlrc'[1]' \
	sub-028    73    nogo  ${derDir}/sub-028/gonogo_stats_blur8+tlrc'[5]' \
	sub-030    17    go    ${derDir}/sub-030/gonogo_stats_blur8+tlrc'[1]' \
	sub-030    17    nogo  ${derDir}/sub-030/gonogo_stats_blur8+tlrc'[5]' \
	sub-035    154   go    ${derDir}/sub-035/gonogo_stats_blur8+tlrc'[1]' \
	sub-035    154   nogo  ${derDir}/sub-035/gonogo_stats_blur8+tlrc'[5]' \
	sub-036    148   go    ${derDir}/sub-036/gonogo_stats_blur8+tlrc'[1]' \
	sub-036    148   nogo  ${derDir}/sub-036/gonogo_stats_blur8+tlrc'[5]' \
	sub-037    114   go    ${derDir}/sub-037/gonogo_stats_blur8+tlrc'[1]' \
	sub-037    114   nogo  ${derDir}/sub-037/gonogo_stats_blur8+tlrc'[5]' \
	sub-038    178   go    ${derDir}/sub-038/gonogo_stats_blur8+tlrc'[1]' \
	sub-038    178   nogo  ${derDir}/sub-038/gonogo_stats_blur8+tlrc'[5]' \
	sub-039    76    go    ${derDir}/sub-039/gonogo_stats_blur8+tlrc'[1]' \
	sub-039    76    nogo  ${derDir}/sub-039/gonogo_stats_blur8+tlrc'[5]' \
	sub-041    195   go    ${derDir}/sub-041/gonogo_stats_blur8+tlrc'[1]' \
	sub-041    195   nogo  ${derDir}/sub-041/gonogo_stats_blur8+tlrc'[5]' \
	sub-042    232   go    ${derDir}/sub-042/gonogo_stats_blur8+tlrc'[1]' \
	sub-042    232   nogo  ${derDir}/sub-042/gonogo_stats_blur8+tlrc'[5]' \
	sub-043    51    go    ${derDir}/sub-043/gonogo_stats_blur8+tlrc'[1]' \
	sub-043    51    nogo  ${derDir}/sub-043/gonogo_stats_blur8+tlrc'[5]' \
	sub-046    182   go    ${derDir}/sub-046/gonogo_stats_blur8+tlrc'[1]' \
	sub-046    182   nogo  ${derDir}/sub-046/gonogo_stats_blur8+tlrc'[5]' \
	sub-047    81    go    ${derDir}/sub-047/gonogo_stats_blur8+tlrc'[1]' \
	sub-047    81    nogo  ${derDir}/sub-047/gonogo_stats_blur8+tlrc'[5]' \
	sub-049    235   go    ${derDir}/sub-049/gonogo_stats_blur8+tlrc'[1]' \
	sub-049    235   nogo  ${derDir}/sub-049/gonogo_stats_blur8+tlrc'[5]' \
	sub-051    43    go    ${derDir}/sub-051/gonogo_stats_blur8+tlrc'[1]' \
	sub-051    43    nogo  ${derDir}/sub-051/gonogo_stats_blur8+tlrc'[5]' \
	sub-052    55    go    ${derDir}/sub-052/gonogo_stats_blur8+tlrc'[1]' \
	sub-052    55    nogo  ${derDir}/sub-052/gonogo_stats_blur8+tlrc'[5]' \
	sub-054    106   go    ${derDir}/sub-054/gonogo_stats_blur8+tlrc'[1]' \
	sub-054    106   nogo  ${derDir}/sub-054/gonogo_stats_blur8+tlrc'[5]'
fi


# Regression 2: DLMO

outPre=MVM1_DLMO

if [ ! -f ${outDir}/${outPre}+tlrc.HEAD ]; then
	3dMVM -prefix $outPre \
	-jobs 8 \
	-mask $mask \
	-bsVars DLMO \
	-wsVars taskConds \
	-qVars DLMO \
	-dataTable \
	Subj       DLMO    taskConds    InputFile \
	sub-001    120    go    ${derDir}/sub-001/gonogo_stats_blur8+tlrc'[1]' \
	sub-001    120    nogo  ${derDir}/sub-001/gonogo_stats_blur8+tlrc'[5]' \
	sub-002    120    go    ${derDir}/sub-002/gonogo_stats_blur8+tlrc'[1]' \
	sub-002    120    nogo  ${derDir}/sub-002/gonogo_stats_blur8+tlrc'[5]' \
	sub-003    120    go    ${derDir}/sub-003/gonogo_stats_blur8+tlrc'[1]' \
	sub-003    120    nogo  ${derDir}/sub-003/gonogo_stats_blur8+tlrc'[5]' \
	sub-004    150    go    ${derDir}/sub-004/gonogo_stats_blur8+tlrc'[1]' \
	sub-004    150    nogo  ${derDir}/sub-004/gonogo_stats_blur8+tlrc'[5]' \
	sub-005    300    go    ${derDir}/sub-005/gonogo_stats_blur8+tlrc'[1]' \
	sub-005    300    nogo  ${derDir}/sub-005/gonogo_stats_blur8+tlrc'[5]' \
	sub-006    180    go    ${derDir}/sub-006/gonogo_stats_blur8+tlrc'[1]' \
	sub-006    180    nogo  ${derDir}/sub-006/gonogo_stats_blur8+tlrc'[5]' \
	sub-007    330    go    ${derDir}/sub-007/gonogo_stats_blur8+tlrc'[1]' \
	sub-007    330    nogo  ${derDir}/sub-007/gonogo_stats_blur8+tlrc'[5]' \
	sub-008    30     go    ${derDir}/sub-008/gonogo_stats_blur8+tlrc'[1]' \
	sub-008    30     nogo  ${derDir}/sub-008/gonogo_stats_blur8+tlrc'[5]' \
	sub-010    270    go    ${derDir}/sub-010/gonogo_stats_blur8+tlrc'[1]' \
	sub-010    270    nogo  ${derDir}/sub-010/gonogo_stats_blur8+tlrc'[5]' \
	sub-011    30     go    ${derDir}/sub-011/gonogo_stats_blur8+tlrc'[1]' \
	sub-011    30     nogo  ${derDir}/sub-011/gonogo_stats_blur8+tlrc'[5]' \
	sub-013    120    go    ${derDir}/sub-013/gonogo_stats_blur8+tlrc'[1]' \
	sub-013    120    nogo  ${derDir}/sub-013/gonogo_stats_blur8+tlrc'[5]' \
	sub-014    60     go    ${derDir}/sub-014/gonogo_stats_blur8+tlrc'[1]' \
	sub-014    60     nogo  ${derDir}/sub-014/gonogo_stats_blur8+tlrc'[5]' \
	sub-015    150    go    ${derDir}/sub-015/gonogo_stats_blur8+tlrc'[1]' \
	sub-015    150    nogo  ${derDir}/sub-015/gonogo_stats_blur8+tlrc'[5]' \
	sub-016    150    go    ${derDir}/sub-016/gonogo_stats_blur8+tlrc'[1]' \
	sub-016    150    nogo  ${derDir}/sub-016/gonogo_stats_blur8+tlrc'[5]' \
	sub-018    150    go    ${derDir}/sub-018/gonogo_stats_blur8+tlrc'[1]' \
	sub-018    150    nogo  ${derDir}/sub-018/gonogo_stats_blur8+tlrc'[5]' \
	sub-019    180    go    ${derDir}/sub-019/gonogo_stats_blur8+tlrc'[1]' \
	sub-019    180    nogo  ${derDir}/sub-019/gonogo_stats_blur8+tlrc'[5]' \
	sub-020    150    go    ${derDir}/sub-020/gonogo_stats_blur8+tlrc'[1]' \
	sub-020    150    nogo  ${derDir}/sub-020/gonogo_stats_blur8+tlrc'[5]' \
	sub-022    210    go    ${derDir}/sub-022/gonogo_stats_blur8+tlrc'[1]' \
	sub-022    210    nogo  ${derDir}/sub-022/gonogo_stats_blur8+tlrc'[5]' \
	sub-023    150    go    ${derDir}/sub-023/gonogo_stats_blur8+tlrc'[1]' \
	sub-023    150    nogo  ${derDir}/sub-023/gonogo_stats_blur8+tlrc'[5]' \
	sub-024    30     go    ${derDir}/sub-024/gonogo_stats_blur8+tlrc'[1]' \
	sub-024    30     nogo  ${derDir}/sub-024/gonogo_stats_blur8+tlrc'[5]' \
	sub-026    270    go    ${derDir}/sub-026/gonogo_stats_blur8+tlrc'[1]' \
	sub-026    270    nogo  ${derDir}/sub-026/gonogo_stats_blur8+tlrc'[5]' \
	sub-028    150    go    ${derDir}/sub-028/gonogo_stats_blur8+tlrc'[1]' \
	sub-028    150    nogo  ${derDir}/sub-028/gonogo_stats_blur8+tlrc'[5]' \
	sub-030    240    go    ${derDir}/sub-030/gonogo_stats_blur8+tlrc'[1]' \
	sub-030    240    nogo  ${derDir}/sub-030/gonogo_stats_blur8+tlrc'[5]' \
	sub-035    105    go    ${derDir}/sub-035/gonogo_stats_blur8+tlrc'[1]' \
	sub-035    105    nogo  ${derDir}/sub-035/gonogo_stats_blur8+tlrc'[5]' \
	sub-037    150    go    ${derDir}/sub-037/gonogo_stats_blur8+tlrc'[1]' \
	sub-037    150    nogo  ${derDir}/sub-037/gonogo_stats_blur8+tlrc'[5]' \
	sub-038    210    go    ${derDir}/sub-038/gonogo_stats_blur8+tlrc'[1]' \
	sub-038    210    nogo  ${derDir}/sub-038/gonogo_stats_blur8+tlrc'[5]' \
	sub-039    90     go    ${derDir}/sub-039/gonogo_stats_blur8+tlrc'[1]' \
	sub-039    90     nogo  ${derDir}/sub-039/gonogo_stats_blur8+tlrc'[5]' \
	sub-040    90     go    ${derDir}/sub-040/gonogo_stats_blur8+tlrc'[1]' \
	sub-040    90     nogo  ${derDir}/sub-040/gonogo_stats_blur8+tlrc'[5]' \
	sub-041    60     go    ${derDir}/sub-041/gonogo_stats_blur8+tlrc'[1]' \
	sub-041    60     nogo  ${derDir}/sub-041/gonogo_stats_blur8+tlrc'[5]' \
	sub-042    0      go    ${derDir}/sub-042/gonogo_stats_blur8+tlrc'[1]' \
	sub-042    0      nogo  ${derDir}/sub-042/gonogo_stats_blur8+tlrc'[5]' \
	sub-043    120    go    ${derDir}/sub-043/gonogo_stats_blur8+tlrc'[1]' \
	sub-043    120    nogo  ${derDir}/sub-043/gonogo_stats_blur8+tlrc'[5]' \
	sub-046    120    go    ${derDir}/sub-046/gonogo_stats_blur8+tlrc'[1]' \
	sub-046    120    nogo  ${derDir}/sub-046/gonogo_stats_blur8+tlrc'[5]' \
	sub-047    270    go    ${derDir}/sub-047/gonogo_stats_blur8+tlrc'[1]' \
	sub-047    270    nogo  ${derDir}/sub-047/gonogo_stats_blur8+tlrc'[5]' \
	sub-049    30     go    ${derDir}/sub-049/gonogo_stats_blur8+tlrc'[1]' \
	sub-049    30     nogo  ${derDir}/sub-049/gonogo_stats_blur8+tlrc'[5]' \
	sub-051    180    go    ${derDir}/sub-051/gonogo_stats_blur8+tlrc'[1]' \
	sub-051    180    nogo  ${derDir}/sub-051/gonogo_stats_blur8+tlrc'[5]' \
	sub-052    120    go    ${derDir}/sub-052/gonogo_stats_blur8+tlrc'[1]' \
	sub-052    120    nogo  ${derDir}/sub-052/gonogo_stats_blur8+tlrc'[5]' \
	sub-054    150    go    ${derDir}/sub-054/gonogo_stats_blur8+tlrc'[1]' \
	sub-054    150    nogo  ${derDir}/sub-054/gonogo_stats_blur8+tlrc'[5]'
fi
 

# Regression 3: social jetlag


outPre=MVM1_SJL

if [ ! -f ${outDir}/${outPre}+tlrc.HEAD ]; then
	3dMVM -prefix $outPre \
	-jobs 8 \
	-mask $mask \
	-bsVars SJL \
	-wsVars taskConds \
	-qVars SJL \
	-dataTable \
	Subj       SJL    taskConds    InputFile \
	sub-001    25     go    ${derDir}/sub-001/gonogo_stats_blur8+tlrc'[1]' \
	sub-001    25     nogo  ${derDir}/sub-001/gonogo_stats_blur8+tlrc'[5]' \
	sub-002    47     go    ${derDir}/sub-002/gonogo_stats_blur8+tlrc'[1]' \
	sub-002    47     nogo  ${derDir}/sub-002/gonogo_stats_blur8+tlrc'[5]' \
	sub-003    31     go    ${derDir}/sub-003/gonogo_stats_blur8+tlrc'[1]' \
	sub-003    31     nogo  ${derDir}/sub-003/gonogo_stats_blur8+tlrc'[5]' \
	sub-004    74     go    ${derDir}/sub-004/gonogo_stats_blur8+tlrc'[1]' \
	sub-004    74     nogo  ${derDir}/sub-004/gonogo_stats_blur8+tlrc'[5]' \
	sub-005    162    go    ${derDir}/sub-005/gonogo_stats_blur8+tlrc'[1]' \
	sub-005    162    nogo  ${derDir}/sub-005/gonogo_stats_blur8+tlrc'[5]' \
	sub-006    25     go    ${derDir}/sub-006/gonogo_stats_blur8+tlrc'[1]' \
	sub-006    25     nogo  ${derDir}/sub-006/gonogo_stats_blur8+tlrc'[5]' \
	sub-007    38     go    ${derDir}/sub-007/gonogo_stats_blur8+tlrc'[1]' \
	sub-007    38     nogo  ${derDir}/sub-007/gonogo_stats_blur8+tlrc'[5]' \
	sub-010    91     go    ${derDir}/sub-010/gonogo_stats_blur8+tlrc'[1]' \
	sub-010    91     nogo  ${derDir}/sub-010/gonogo_stats_blur8+tlrc'[5]' \
	sub-011    141    go    ${derDir}/sub-011/gonogo_stats_blur8+tlrc'[1]' \
	sub-011    141    nogo  ${derDir}/sub-011/gonogo_stats_blur8+tlrc'[5]' \
	sub-013    101    go    ${derDir}/sub-013/gonogo_stats_blur8+tlrc'[1]' \
	sub-013    101    nogo  ${derDir}/sub-013/gonogo_stats_blur8+tlrc'[5]' \
	sub-014    53     go    ${derDir}/sub-014/gonogo_stats_blur8+tlrc'[1]' \
	sub-014    53     nogo  ${derDir}/sub-014/gonogo_stats_blur8+tlrc'[5]' \
	sub-015    49     go    ${derDir}/sub-015/gonogo_stats_blur8+tlrc'[1]' \
	sub-015    49     nogo  ${derDir}/sub-015/gonogo_stats_blur8+tlrc'[5]' \
	sub-016    71     go    ${derDir}/sub-016/gonogo_stats_blur8+tlrc'[1]' \
	sub-016    71     nogo  ${derDir}/sub-016/gonogo_stats_blur8+tlrc'[5]' \
	sub-018    25     go    ${derDir}/sub-018/gonogo_stats_blur8+tlrc'[1]' \
	sub-018    25     nogo  ${derDir}/sub-018/gonogo_stats_blur8+tlrc'[5]' \
	sub-019    188    go    ${derDir}/sub-019/gonogo_stats_blur8+tlrc'[1]' \
	sub-019    188    nogo  ${derDir}/sub-019/gonogo_stats_blur8+tlrc'[5]' \
	sub-020    0      go    ${derDir}/sub-020/gonogo_stats_blur8+tlrc'[1]' \
	sub-020    0      nogo  ${derDir}/sub-020/gonogo_stats_blur8+tlrc'[5]' \
	sub-021    74     go    ${derDir}/sub-021/gonogo_stats_blur8+tlrc'[1]' \
	sub-021    74     nogo  ${derDir}/sub-021/gonogo_stats_blur8+tlrc'[5]' \
	sub-022    86     go    ${derDir}/sub-022/gonogo_stats_blur8+tlrc'[1]' \
	sub-022    86     nogo  ${derDir}/sub-022/gonogo_stats_blur8+tlrc'[5]' \
	sub-023    80     go    ${derDir}/sub-023/gonogo_stats_blur8+tlrc'[1]' \
	sub-023    80     nogo  ${derDir}/sub-023/gonogo_stats_blur8+tlrc'[5]' \
	sub-024    168    go    ${derDir}/sub-024/gonogo_stats_blur8+tlrc'[1]' \
	sub-024    168    nogo  ${derDir}/sub-024/gonogo_stats_blur8+tlrc'[5]' \
	sub-026    13     go    ${derDir}/sub-026/gonogo_stats_blur8+tlrc'[1]' \
	sub-026    13     nogo  ${derDir}/sub-026/gonogo_stats_blur8+tlrc'[5]' \
	sub-028    36     go    ${derDir}/sub-028/gonogo_stats_blur8+tlrc'[1]' \
	sub-028    36     nogo  ${derDir}/sub-028/gonogo_stats_blur8+tlrc'[5]' \
	sub-030    10     go    ${derDir}/sub-030/gonogo_stats_blur8+tlrc'[1]' \
	sub-030    10     nogo  ${derDir}/sub-030/gonogo_stats_blur8+tlrc'[5]' \
	sub-032    15     go    ${derDir}/sub-032/gonogo_stats_blur8+tlrc'[1]' \
	sub-032    15     nogo  ${derDir}/sub-032/gonogo_stats_blur8+tlrc'[5]' \
	sub-035    38     go    ${derDir}/sub-035/gonogo_stats_blur8+tlrc'[1]' \
	sub-035    38     nogo  ${derDir}/sub-035/gonogo_stats_blur8+tlrc'[5]' \
	sub-036    9      go    ${derDir}/sub-036/gonogo_stats_blur8+tlrc'[1]' \
	sub-036    9      nogo  ${derDir}/sub-036/gonogo_stats_blur8+tlrc'[5]' \
	sub-037    36     go    ${derDir}/sub-037/gonogo_stats_blur8+tlrc'[1]' \
	sub-037    36     nogo  ${derDir}/sub-037/gonogo_stats_blur8+tlrc'[5]' \
	sub-039    126    go    ${derDir}/sub-039/gonogo_stats_blur8+tlrc'[1]' \
	sub-039    126    nogo  ${derDir}/sub-039/gonogo_stats_blur8+tlrc'[5]' \
	sub-041    21     go    ${derDir}/sub-041/gonogo_stats_blur8+tlrc'[1]' \
	sub-041    21     nogo  ${derDir}/sub-041/gonogo_stats_blur8+tlrc'[5]' \
	sub-042    13     go    ${derDir}/sub-042/gonogo_stats_blur8+tlrc'[1]' \
	sub-042    13     nogo  ${derDir}/sub-042/gonogo_stats_blur8+tlrc'[5]' \
	sub-043    77     go    ${derDir}/sub-043/gonogo_stats_blur8+tlrc'[1]' \
	sub-043    77     nogo  ${derDir}/sub-043/gonogo_stats_blur8+tlrc'[5]' \
	sub-046    49     go    ${derDir}/sub-046/gonogo_stats_blur8+tlrc'[1]' \
	sub-046    49     nogo  ${derDir}/sub-046/gonogo_stats_blur8+tlrc'[5]' \
	sub-047    89     go    ${derDir}/sub-047/gonogo_stats_blur8+tlrc'[1]' \
	sub-047    89     nogo  ${derDir}/sub-047/gonogo_stats_blur8+tlrc'[5]' \
	sub-049    68     go    ${derDir}/sub-049/gonogo_stats_blur8+tlrc'[1]' \
	sub-049    68     nogo  ${derDir}/sub-049/gonogo_stats_blur8+tlrc'[5]' \
	sub-050    6      go    ${derDir}/sub-050/gonogo_stats_blur8+tlrc'[1]' \
	sub-050    6      nogo  ${derDir}/sub-050/gonogo_stats_blur8+tlrc'[5]' \
	sub-051    34     go    ${derDir}/sub-051/gonogo_stats_blur8+tlrc'[1]' \
	sub-051    34     nogo  ${derDir}/sub-051/gonogo_stats_blur8+tlrc'[5]' \
	sub-052    157    go    ${derDir}/sub-052/gonogo_stats_blur8+tlrc'[1]' \
	sub-052    157    nogo  ${derDir}/sub-052/gonogo_stats_blur8+tlrc'[5]'

fi

# Regression 4: duration 

outPre=MVM1_DURA

if [ ! -f ${outDir}/${outPre}+tlrc.HEAD ]; then
	3dMVM -prefix $outPre \
	-jobs 8 \
	-mask $mask \
	-bsVars DURA \
	-wsVars taskConds \
	-qVars DURA \
	-dataTable \
	Subj       DURA  taskConds    InputFile \
	sub-001    492    go    ${derDir}/sub-001/gonogo_stats_blur8+tlrc'[1]' \
	sub-001    492    nogo  ${derDir}/sub-001/gonogo_stats_blur8+tlrc'[5]' \
	sub-002    516    go    ${derDir}/sub-002/gonogo_stats_blur8+tlrc'[1]' \
	sub-002    516    nogo  ${derDir}/sub-002/gonogo_stats_blur8+tlrc'[5]' \
	sub-003    472    go    ${derDir}/sub-003/gonogo_stats_blur8+tlrc'[1]' \
	sub-003    472    nogo  ${derDir}/sub-003/gonogo_stats_blur8+tlrc'[5]' \
	sub-004    499    go    ${derDir}/sub-004/gonogo_stats_blur8+tlrc'[1]' \
	sub-004    499    nogo  ${derDir}/sub-004/gonogo_stats_blur8+tlrc'[5]' \
	sub-005    501    go    ${derDir}/sub-005/gonogo_stats_blur8+tlrc'[1]' \
	sub-005    501    nogo  ${derDir}/sub-005/gonogo_stats_blur8+tlrc'[5]' \
	sub-006    360    go    ${derDir}/sub-006/gonogo_stats_blur8+tlrc'[1]' \
	sub-006    360    nogo  ${derDir}/sub-006/gonogo_stats_blur8+tlrc'[5]' \
	sub-007    397    go    ${derDir}/sub-007/gonogo_stats_blur8+tlrc'[1]' \
	sub-007    397    nogo  ${derDir}/sub-007/gonogo_stats_blur8+tlrc'[5]' \
	sub-010    371    go    ${derDir}/sub-010/gonogo_stats_blur8+tlrc'[1]' \
	sub-010    371    nogo  ${derDir}/sub-010/gonogo_stats_blur8+tlrc'[5]' \
	sub-011    477    go    ${derDir}/sub-011/gonogo_stats_blur8+tlrc'[1]' \
	sub-011    477    nogo  ${derDir}/sub-011/gonogo_stats_blur8+tlrc'[5]' \
	sub-013    422    go    ${derDir}/sub-013/gonogo_stats_blur8+tlrc'[1]' \
	sub-013    422    nogo  ${derDir}/sub-013/gonogo_stats_blur8+tlrc'[5]' \
	sub-014    457    go    ${derDir}/sub-014/gonogo_stats_blur8+tlrc'[1]' \
	sub-014    457    nogo  ${derDir}/sub-014/gonogo_stats_blur8+tlrc'[5]' \
	sub-015    389    go    ${derDir}/sub-015/gonogo_stats_blur8+tlrc'[1]' \
	sub-015    389    nogo  ${derDir}/sub-015/gonogo_stats_blur8+tlrc'[5]' \
	sub-016    444    go    ${derDir}/sub-016/gonogo_stats_blur8+tlrc'[1]' \
	sub-016    444    nogo  ${derDir}/sub-016/gonogo_stats_blur8+tlrc'[5]' \
	sub-018    499    go    ${derDir}/sub-018/gonogo_stats_blur8+tlrc'[1]' \
	sub-018    499    nogo  ${derDir}/sub-018/gonogo_stats_blur8+tlrc'[5]' \
	sub-019    483    go    ${derDir}/sub-019/gonogo_stats_blur8+tlrc'[1]' \
	sub-019    483    nogo  ${derDir}/sub-019/gonogo_stats_blur8+tlrc'[5]' \
	sub-020    411    go    ${derDir}/sub-020/gonogo_stats_blur8+tlrc'[1]' \
	sub-020    411    nogo  ${derDir}/sub-020/gonogo_stats_blur8+tlrc'[5]' \
	sub-021    465    go    ${derDir}/sub-021/gonogo_stats_blur8+tlrc'[1]' \
	sub-021    465    nogo  ${derDir}/sub-021/gonogo_stats_blur8+tlrc'[5]' \
	sub-022    345    go    ${derDir}/sub-022/gonogo_stats_blur8+tlrc'[1]' \
	sub-022    345    nogo  ${derDir}/sub-022/gonogo_stats_blur8+tlrc'[5]' \
	sub-023    462    go    ${derDir}/sub-023/gonogo_stats_blur8+tlrc'[1]' \
	sub-023    462    nogo  ${derDir}/sub-023/gonogo_stats_blur8+tlrc'[5]' \
	sub-024    424    go    ${derDir}/sub-024/gonogo_stats_blur8+tlrc'[1]' \
	sub-024    424    nogo  ${derDir}/sub-024/gonogo_stats_blur8+tlrc'[5]' \
	sub-026    428    go    ${derDir}/sub-026/gonogo_stats_blur8+tlrc'[1]' \
	sub-026    428    nogo  ${derDir}/sub-026/gonogo_stats_blur8+tlrc'[5]' \
	sub-028    467    go    ${derDir}/sub-028/gonogo_stats_blur8+tlrc'[1]' \
	sub-028    467    nogo  ${derDir}/sub-028/gonogo_stats_blur8+tlrc'[5]' \
	sub-030    535    go    ${derDir}/sub-030/gonogo_stats_blur8+tlrc'[1]' \
	sub-030    535    nogo  ${derDir}/sub-030/gonogo_stats_blur8+tlrc'[5]' \
	sub-032    450    go    ${derDir}/sub-032/gonogo_stats_blur8+tlrc'[1]' \
	sub-032    450    nogo  ${derDir}/sub-032/gonogo_stats_blur8+tlrc'[5]' \
	sub-035    448    go    ${derDir}/sub-035/gonogo_stats_blur8+tlrc'[1]' \
	sub-035    448    nogo  ${derDir}/sub-035/gonogo_stats_blur8+tlrc'[5]' \
	sub-036    387    go    ${derDir}/sub-036/gonogo_stats_blur8+tlrc'[1]' \
	sub-036    387    nogo  ${derDir}/sub-036/gonogo_stats_blur8+tlrc'[5]' \
	sub-037    450    go    ${derDir}/sub-037/gonogo_stats_blur8+tlrc'[1]' \
	sub-037    450    nogo  ${derDir}/sub-037/gonogo_stats_blur8+tlrc'[5]' \
	sub-039    519    go    ${derDir}/sub-039/gonogo_stats_blur8+tlrc'[1]' \
	sub-039    519    nogo  ${derDir}/sub-039/gonogo_stats_blur8+tlrc'[5]' \
	sub-041    419    go    ${derDir}/sub-041/gonogo_stats_blur8+tlrc'[1]' \
	sub-041    419    nogo  ${derDir}/sub-041/gonogo_stats_blur8+tlrc'[5]' \
	sub-042    430    go    ${derDir}/sub-042/gonogo_stats_blur8+tlrc'[1]' \
	sub-042    430    nogo  ${derDir}/sub-042/gonogo_stats_blur8+tlrc'[5]' \
	sub-043    533    go    ${derDir}/sub-043/gonogo_stats_blur8+tlrc'[1]' \
	sub-043    533    nogo  ${derDir}/sub-043/gonogo_stats_blur8+tlrc'[5]' \
	sub-046    421    go    ${derDir}/sub-046/gonogo_stats_blur8+tlrc'[1]' \
	sub-046    421    nogo  ${derDir}/sub-046/gonogo_stats_blur8+tlrc'[5]' \
	sub-047    364    go    ${derDir}/sub-047/gonogo_stats_blur8+tlrc'[1]' \
	sub-047    364    nogo  ${derDir}/sub-047/gonogo_stats_blur8+tlrc'[5]' \
	sub-049    457    go    ${derDir}/sub-049/gonogo_stats_blur8+tlrc'[1]' \
	sub-049    457    nogo  ${derDir}/sub-049/gonogo_stats_blur8+tlrc'[5]' \
	sub-050    463    go    ${derDir}/sub-050/gonogo_stats_blur8+tlrc'[1]' \
	sub-050    463    nogo  ${derDir}/sub-050/gonogo_stats_blur8+tlrc'[5]' \
	sub-051    497    go    ${derDir}/sub-051/gonogo_stats_blur8+tlrc'[1]' \
	sub-051    497    nogo  ${derDir}/sub-051/gonogo_stats_blur8+tlrc'[5]' \
	sub-052    576    go    ${derDir}/sub-052/gonogo_stats_blur8+tlrc'[1]' \
	sub-052    576    nogo  ${derDir}/sub-052/gonogo_stats_blur8+tlrc'[5]' \
	sub-054    463    go    ${derDir}/sub-054/gonogo_stats_blur8+tlrc'[1]' \
	sub-054    463    nogo  ${derDir}/sub-054/gonogo_stats_blur8+tlrc'[5]'
fi

# task regression 
outPre=MVM1_task

if [ ! -f ${outDir}/${outPre}+tlrc.HEAD ]; then
	3dMVM -prefix $outPre \
	-jobs 8 \
	-mask $mask \
	-wsVars taskConds \
	-num_glt 1 \
	-gltLabel 1 nogo-go -gltCode 1 'taskConds : 1*nogo -1*go' \
	-dataTable \
	Subj	taskConds	InputFile \
	sub-001 go  	${derDir}/sub-001/gonogo_stats_blur8+tlrc'[1]' \
	sub-001 nogo  	${derDir}/sub-001/gonogo_stats_blur8+tlrc'[5]' \
	sub-002 go  	${derDir}/sub-002/gonogo_stats_blur8+tlrc'[1]' \
	sub-002 nogo  	${derDir}/sub-002/gonogo_stats_blur8+tlrc'[5]' \
	sub-003 go  	${derDir}/sub-003/gonogo_stats_blur8+tlrc'[1]' \
	sub-003 nogo  	${derDir}/sub-003/gonogo_stats_blur8+tlrc'[5]' \
	sub-004 go  	${derDir}/sub-004/gonogo_stats_blur8+tlrc'[1]' \
	sub-004 nogo  	${derDir}/sub-004/gonogo_stats_blur8+tlrc'[5]' \
	sub-005 go  	${derDir}/sub-005/gonogo_stats_blur8+tlrc'[1]' \
	sub-005 nogo  	${derDir}/sub-005/gonogo_stats_blur8+tlrc'[5]' \
	sub-006 go  	${derDir}/sub-006/gonogo_stats_blur8+tlrc'[1]' \
	sub-006 nogo  	${derDir}/sub-006/gonogo_stats_blur8+tlrc'[5]' \
	sub-007 go  	${derDir}/sub-007/gonogo_stats_blur8+tlrc'[1]' \
	sub-007 nogo  	${derDir}/sub-007/gonogo_stats_blur8+tlrc'[5]' \
	sub-008 go  	${derDir}/sub-008/gonogo_stats_blur8+tlrc'[1]' \
	sub-008 nogo  	${derDir}/sub-008/gonogo_stats_blur8+tlrc'[5]' \
	sub-010 go  	${derDir}/sub-010/gonogo_stats_blur8+tlrc'[1]' \
	sub-010 nogo  	${derDir}/sub-010/gonogo_stats_blur8+tlrc'[5]' \
	sub-011 go  	${derDir}/sub-011/gonogo_stats_blur8+tlrc'[1]' \
	sub-011 nogo  	${derDir}/sub-011/gonogo_stats_blur8+tlrc'[5]' \
	sub-013 go  	${derDir}/sub-013/gonogo_stats_blur8+tlrc'[1]' \
	sub-013 nogo  	${derDir}/sub-013/gonogo_stats_blur8+tlrc'[5]' \
	sub-014 go  	${derDir}/sub-014/gonogo_stats_blur8+tlrc'[1]' \
	sub-014 nogo  	${derDir}/sub-014/gonogo_stats_blur8+tlrc'[5]' \
	sub-015 go  	${derDir}/sub-015/gonogo_stats_blur8+tlrc'[1]' \
	sub-015 nogo  	${derDir}/sub-015/gonogo_stats_blur8+tlrc'[5]' \
	sub-016 go  	${derDir}/sub-016/gonogo_stats_blur8+tlrc'[1]' \
	sub-016 nogo  	${derDir}/sub-016/gonogo_stats_blur8+tlrc'[5]' \
	sub-018 go  	${derDir}/sub-018/gonogo_stats_blur8+tlrc'[1]' \
	sub-018 nogo  	${derDir}/sub-018/gonogo_stats_blur8+tlrc'[5]' \
	sub-019 go  	${derDir}/sub-019/gonogo_stats_blur8+tlrc'[1]' \
	sub-019 nogo  	${derDir}/sub-019/gonogo_stats_blur8+tlrc'[5]' \
	sub-020 go  	${derDir}/sub-020/gonogo_stats_blur8+tlrc'[1]' \
	sub-020 nogo  	${derDir}/sub-020/gonogo_stats_blur8+tlrc'[5]' \
	sub-021 go  	${derDir}/sub-021/gonogo_stats_blur8+tlrc'[1]' \
	sub-021 nogo  	${derDir}/sub-021/gonogo_stats_blur8+tlrc'[5]' \
	sub-022 go  	${derDir}/sub-022/gonogo_stats_blur8+tlrc'[1]' \
	sub-022 nogo  	${derDir}/sub-022/gonogo_stats_blur8+tlrc'[5]' \
	sub-023 go  	${derDir}/sub-023/gonogo_stats_blur8+tlrc'[1]' \
	sub-023 nogo  	${derDir}/sub-023/gonogo_stats_blur8+tlrc'[5]' \
	sub-024 go  	${derDir}/sub-024/gonogo_stats_blur8+tlrc'[1]' \
	sub-024 nogo  	${derDir}/sub-024/gonogo_stats_blur8+tlrc'[5]' \
	sub-026 go  	${derDir}/sub-026/gonogo_stats_blur8+tlrc'[1]' \
	sub-026 nogo  	${derDir}/sub-026/gonogo_stats_blur8+tlrc'[5]' \
	sub-028 go  	${derDir}/sub-028/gonogo_stats_blur8+tlrc'[1]' \
	sub-028 nogo  	${derDir}/sub-028/gonogo_stats_blur8+tlrc'[5]' \
	sub-030 go  	${derDir}/sub-030/gonogo_stats_blur8+tlrc'[1]' \
	sub-030 nogo  	${derDir}/sub-030/gonogo_stats_blur8+tlrc'[5]' \
	sub-032 go  	${derDir}/sub-032/gonogo_stats_blur8+tlrc'[1]' \
	sub-032 nogo  	${derDir}/sub-032/gonogo_stats_blur8+tlrc'[5]' \
	sub-035 go  	${derDir}/sub-035/gonogo_stats_blur8+tlrc'[1]' \
	sub-035 nogo  	${derDir}/sub-035/gonogo_stats_blur8+tlrc'[5]' \
	sub-036 go  	${derDir}/sub-036/gonogo_stats_blur8+tlrc'[1]' \
	sub-036 nogo  	${derDir}/sub-036/gonogo_stats_blur8+tlrc'[5]' \
	sub-037 go  	${derDir}/sub-037/gonogo_stats_blur8+tlrc'[1]' \
	sub-037 nogo  	${derDir}/sub-037/gonogo_stats_blur8+tlrc'[5]' \
	sub-038 go  	${derDir}/sub-038/gonogo_stats_blur8+tlrc'[1]' \
	sub-038 nogo  	${derDir}/sub-038/gonogo_stats_blur8+tlrc'[5]' \
	sub-039 go  	${derDir}/sub-039/gonogo_stats_blur8+tlrc'[1]' \
	sub-039 nogo  	${derDir}/sub-039/gonogo_stats_blur8+tlrc'[5]' \
	sub-040 go  	${derDir}/sub-040/gonogo_stats_blur8+tlrc'[1]' \
	sub-040 nogo  	${derDir}/sub-040/gonogo_stats_blur8+tlrc'[5]' \
	sub-041 go  	${derDir}/sub-041/gonogo_stats_blur8+tlrc'[1]' \
	sub-041 nogo  	${derDir}/sub-041/gonogo_stats_blur8+tlrc'[5]' \
	sub-042 go  	${derDir}/sub-042/gonogo_stats_blur8+tlrc'[1]' \
	sub-042 nogo  	${derDir}/sub-042/gonogo_stats_blur8+tlrc'[5]' \
	sub-043 go  	${derDir}/sub-043/gonogo_stats_blur8+tlrc'[1]' \
	sub-043 nogo  	${derDir}/sub-043/gonogo_stats_blur8+tlrc'[5]' \
	sub-046 go  	${derDir}/sub-046/gonogo_stats_blur8+tlrc'[1]' \
	sub-046 nogo  	${derDir}/sub-046/gonogo_stats_blur8+tlrc'[5]' \
	sub-047 go  	${derDir}/sub-047/gonogo_stats_blur8+tlrc'[1]' \
	sub-047 nogo  	${derDir}/sub-047/gonogo_stats_blur8+tlrc'[5]' \
	sub-049 go  	${derDir}/sub-049/gonogo_stats_blur8+tlrc'[1]' \
	sub-049 nogo  	${derDir}/sub-049/gonogo_stats_blur8+tlrc'[5]' \
	sub-050 go  	${derDir}/sub-050/gonogo_stats_blur8+tlrc'[1]' \
	sub-050 nogo  	${derDir}/sub-050/gonogo_stats_blur8+tlrc'[5]' \
	sub-051 go  	${derDir}/sub-051/gonogo_stats_blur8+tlrc'[1]' \
	sub-051 nogo  	${derDir}/sub-051/gonogo_stats_blur8+tlrc'[5]' \
	sub-052 go  	${derDir}/sub-052/gonogo_stats_blur8+tlrc'[1]' \
	sub-052 nogo  	${derDir}/sub-052/gonogo_stats_blur8+tlrc'[5]' \
	sub-054 go  	${derDir}/sub-054/gonogo_stats_blur8+tlrc'[1]' \
	sub-054 nogo  	${derDir}/sub-054/gonogo_stats_blur8+tlrc'[5]'
fi  


# Dichotomous regressions

outPre=MVM2_CMI_dic

if [ ! -f ${outDir}/${outPre}+tlrc.HEAD ]; then
	3dMVM -prefix $outPre \
	-jobs 8 \
	-mask $mask \
	-bsVars CMI_dic \
	-wsVars taskConds \
	-num_glt 1 \
	-gltLabel 1 aligned-misal -gltCode 1 'CMI_dic : 1*aligned -1*misaligned' \
	-dataTable \
	Subj       CMI_dic    taskConds    InputFile \
	sub-001    aligned     go    ${derDir}/sub-001/gonogo_stats_blur8+tlrc'[1]' \
	sub-001    aligned     nogo  ${derDir}/sub-001/gonogo_stats_blur8+tlrc'[5]' \
	sub-002    aligned     go    ${derDir}/sub-002/gonogo_stats_blur8+tlrc'[1]' \
	sub-002    aligned     nogo  ${derDir}/sub-002/gonogo_stats_blur8+tlrc'[5]' \
	sub-003    aligned     go    ${derDir}/sub-003/gonogo_stats_blur8+tlrc'[1]' \
	sub-003    aligned     nogo  ${derDir}/sub-003/gonogo_stats_blur8+tlrc'[5]' \
	sub-004    misaligned  go    ${derDir}/sub-004/gonogo_stats_blur8+tlrc'[1]' \
	sub-004    misaligned  nogo  ${derDir}/sub-004/gonogo_stats_blur8+tlrc'[5]' \
	sub-005    misaligned  go    ${derDir}/sub-005/gonogo_stats_blur8+tlrc'[1]' \
	sub-005    misaligned  nogo  ${derDir}/sub-005/gonogo_stats_blur8+tlrc'[5]' \
	sub-006    aligned     go    ${derDir}/sub-006/gonogo_stats_blur8+tlrc'[1]' \
	sub-006    aligned     nogo  ${derDir}/sub-006/gonogo_stats_blur8+tlrc'[5]' \
	sub-007    aligned     go    ${derDir}/sub-007/gonogo_stats_blur8+tlrc'[1]' \
	sub-007    aligned     nogo  ${derDir}/sub-007/gonogo_stats_blur8+tlrc'[5]' \
	sub-010    misaligned  go    ${derDir}/sub-010/gonogo_stats_blur8+tlrc'[1]' \
	sub-010    misaligned  nogo  ${derDir}/sub-010/gonogo_stats_blur8+tlrc'[5]' \
	sub-011    misaligned  go    ${derDir}/sub-011/gonogo_stats_blur8+tlrc'[1]' \
	sub-011    misaligned  nogo  ${derDir}/sub-011/gonogo_stats_blur8+tlrc'[5]' \
	sub-013    misaligned  go    ${derDir}/sub-013/gonogo_stats_blur8+tlrc'[1]' \
	sub-013    misaligned  nogo  ${derDir}/sub-013/gonogo_stats_blur8+tlrc'[5]' \
	sub-014    aligned     go    ${derDir}/sub-014/gonogo_stats_blur8+tlrc'[1]' \
	sub-014    aligned     nogo  ${derDir}/sub-014/gonogo_stats_blur8+tlrc'[5]' \
	sub-015    aligned     go    ${derDir}/sub-015/gonogo_stats_blur8+tlrc'[1]' \
	sub-015    aligned     nogo  ${derDir}/sub-015/gonogo_stats_blur8+tlrc'[5]' \
	sub-016    misaligned  go    ${derDir}/sub-016/gonogo_stats_blur8+tlrc'[1]' \
	sub-016    misaligned  nogo  ${derDir}/sub-016/gonogo_stats_blur8+tlrc'[5]' \
	sub-018    aligned     go    ${derDir}/sub-018/gonogo_stats_blur8+tlrc'[1]' \
	sub-018    aligned     nogo  ${derDir}/sub-018/gonogo_stats_blur8+tlrc'[5]' \
	sub-019    misaligned  go    ${derDir}/sub-019/gonogo_stats_blur8+tlrc'[1]' \
	sub-019    misaligned  nogo  ${derDir}/sub-019/gonogo_stats_blur8+tlrc'[5]' \
	sub-020    aligned     go    ${derDir}/sub-020/gonogo_stats_blur8+tlrc'[1]' \
	sub-020    aligned     nogo  ${derDir}/sub-020/gonogo_stats_blur8+tlrc'[5]' \
	sub-022    misaligned  go    ${derDir}/sub-022/gonogo_stats_blur8+tlrc'[1]' \
	sub-022    misaligned  nogo  ${derDir}/sub-022/gonogo_stats_blur8+tlrc'[5]' \
	sub-023    misaligned  go    ${derDir}/sub-023/gonogo_stats_blur8+tlrc'[1]' \
	sub-023    misaligned  nogo  ${derDir}/sub-023/gonogo_stats_blur8+tlrc'[5]' \
	sub-024    misaligned  go    ${derDir}/sub-024/gonogo_stats_blur8+tlrc'[1]' \
	sub-024    misaligned  nogo  ${derDir}/sub-024/gonogo_stats_blur8+tlrc'[5]' \
	sub-026    aligned     go    ${derDir}/sub-026/gonogo_stats_blur8+tlrc'[1]' \
	sub-026    aligned     nogo  ${derDir}/sub-026/gonogo_stats_blur8+tlrc'[5]' \
	sub-028    aligned     go    ${derDir}/sub-028/gonogo_stats_blur8+tlrc'[1]' \
	sub-028    aligned     nogo  ${derDir}/sub-028/gonogo_stats_blur8+tlrc'[5]' \
	sub-030    aligned     go    ${derDir}/sub-030/gonogo_stats_blur8+tlrc'[1]' \
	sub-030    aligned     nogo  ${derDir}/sub-030/gonogo_stats_blur8+tlrc'[5]' \
	sub-035    aligned     go    ${derDir}/sub-035/gonogo_stats_blur8+tlrc'[1]' \
	sub-035    aligned     nogo  ${derDir}/sub-035/gonogo_stats_blur8+tlrc'[5]' \
	sub-036    aligned     go    ${derDir}/sub-036/gonogo_stats_blur8+tlrc'[1]' \
	sub-036    aligned     nogo  ${derDir}/sub-036/gonogo_stats_blur8+tlrc'[5]' \
	sub-037    aligned     go    ${derDir}/sub-037/gonogo_stats_blur8+tlrc'[1]' \
	sub-037    aligned     nogo  ${derDir}/sub-037/gonogo_stats_blur8+tlrc'[5]' \
	sub-039    misaligned  go    ${derDir}/sub-039/gonogo_stats_blur8+tlrc'[1]' \
	sub-039    misaligned  nogo  ${derDir}/sub-039/gonogo_stats_blur8+tlrc'[5]' \
	sub-041    aligned     go    ${derDir}/sub-041/gonogo_stats_blur8+tlrc'[1]' \
	sub-041    aligned     nogo  ${derDir}/sub-041/gonogo_stats_blur8+tlrc'[5]' \
	sub-042    aligned     go    ${derDir}/sub-042/gonogo_stats_blur8+tlrc'[1]' \
	sub-042    aligned     nogo  ${derDir}/sub-042/gonogo_stats_blur8+tlrc'[5]' \
	sub-043    misaligned  go    ${derDir}/sub-043/gonogo_stats_blur8+tlrc'[1]' \
	sub-043    misaligned  nogo  ${derDir}/sub-043/gonogo_stats_blur8+tlrc'[5]' \
	sub-046    aligned     go    ${derDir}/sub-046/gonogo_stats_blur8+tlrc'[1]' \
	sub-046    aligned     nogo  ${derDir}/sub-046/gonogo_stats_blur8+tlrc'[5]' \
	sub-047    misaligned  go    ${derDir}/sub-047/gonogo_stats_blur8+tlrc'[1]' \
	sub-047    misaligned  nogo  ${derDir}/sub-047/gonogo_stats_blur8+tlrc'[5]' \
	sub-049    misaligned  go    ${derDir}/sub-049/gonogo_stats_blur8+tlrc'[1]' \
	sub-049    misaligned  nogo  ${derDir}/sub-049/gonogo_stats_blur8+tlrc'[5]' \
	sub-051    aligned     go    ${derDir}/sub-051/gonogo_stats_blur8+tlrc'[1]' \
	sub-051    aligned     nogo  ${derDir}/sub-051/gonogo_stats_blur8+tlrc'[5]' \
	sub-052    misaligned  go    ${derDir}/sub-052/gonogo_stats_blur8+tlrc'[1]' \
	sub-052    misaligned  nogo  ${derDir}/sub-052/gonogo_stats_blur8+tlrc'[5]'
fi


#  DLMO dichotomous

outPre=MVM1_DLMO_dic

if [ ! -f ${outDir}/${outPre}+tlrc.HEAD ]; then
	3dMVM -prefix $outPre \
	-jobs 8 \
	-mask $mask \
	-bsVars DLMO_dic \
	-wsVars taskConds \
	-dataTable \
	Subj       DLMO_dic    taskConds    InputFile \
	sub-001   early go    ${derDir}/sub-001/gonogo_stats_blur8+tlrc'[1]' \
	sub-001   early nogo  ${derDir}/sub-001/gonogo_stats_blur8+tlrc'[5]' \
	sub-002   early go    ${derDir}/sub-002/gonogo_stats_blur8+tlrc'[1]' \
	sub-002   early nogo  ${derDir}/sub-002/gonogo_stats_blur8+tlrc'[5]' \
	sub-003   early go    ${derDir}/sub-003/gonogo_stats_blur8+tlrc'[1]' \
	sub-003   early nogo  ${derDir}/sub-003/gonogo_stats_blur8+tlrc'[5]' \
	sub-004   early go    ${derDir}/sub-004/gonogo_stats_blur8+tlrc'[1]' \
	sub-004   early nogo  ${derDir}/sub-004/gonogo_stats_blur8+tlrc'[5]' \
	sub-005   late  go    ${derDir}/sub-005/gonogo_stats_blur8+tlrc'[1]' \
	sub-005   late  nogo  ${derDir}/sub-005/gonogo_stats_blur8+tlrc'[5]' \
	sub-006   late  go    ${derDir}/sub-006/gonogo_stats_blur8+tlrc'[1]' \
	sub-006   late  nogo  ${derDir}/sub-006/gonogo_stats_blur8+tlrc'[5]' \
	sub-007   late  go    ${derDir}/sub-007/gonogo_stats_blur8+tlrc'[1]' \
	sub-007   late  nogo  ${derDir}/sub-007/gonogo_stats_blur8+tlrc'[5]' \
	sub-008   early go    ${derDir}/sub-008/gonogo_stats_blur8+tlrc'[1]' \
	sub-008   early nogo  ${derDir}/sub-008/gonogo_stats_blur8+tlrc'[5]' \
	sub-010   late  go    ${derDir}/sub-010/gonogo_stats_blur8+tlrc'[1]' \
	sub-010   late  nogo  ${derDir}/sub-010/gonogo_stats_blur8+tlrc'[5]' \
	sub-011   early go    ${derDir}/sub-011/gonogo_stats_blur8+tlrc'[1]' \
	sub-011   early nogo  ${derDir}/sub-011/gonogo_stats_blur8+tlrc'[5]' \
	sub-013   early go    ${derDir}/sub-013/gonogo_stats_blur8+tlrc'[1]' \
	sub-013   early nogo  ${derDir}/sub-013/gonogo_stats_blur8+tlrc'[5]' \
	sub-014   early go    ${derDir}/sub-014/gonogo_stats_blur8+tlrc'[1]' \
	sub-014   early nogo  ${derDir}/sub-014/gonogo_stats_blur8+tlrc'[5]' \
	sub-015   early go    ${derDir}/sub-015/gonogo_stats_blur8+tlrc'[1]' \
	sub-015   early nogo  ${derDir}/sub-015/gonogo_stats_blur8+tlrc'[5]' \
	sub-016   early go    ${derDir}/sub-016/gonogo_stats_blur8+tlrc'[1]' \
	sub-016   early nogo  ${derDir}/sub-016/gonogo_stats_blur8+tlrc'[5]' \
	sub-018   early go    ${derDir}/sub-018/gonogo_stats_blur8+tlrc'[1]' \
	sub-018   early nogo  ${derDir}/sub-018/gonogo_stats_blur8+tlrc'[5]' \
	sub-019   late  go    ${derDir}/sub-019/gonogo_stats_blur8+tlrc'[1]' \
	sub-019   late  nogo  ${derDir}/sub-019/gonogo_stats_blur8+tlrc'[5]' \
	sub-020   early go    ${derDir}/sub-020/gonogo_stats_blur8+tlrc'[1]' \
	sub-020   early nogo  ${derDir}/sub-020/gonogo_stats_blur8+tlrc'[5]' \
	sub-022   late  go    ${derDir}/sub-022/gonogo_stats_blur8+tlrc'[1]' \
	sub-022   late  nogo  ${derDir}/sub-022/gonogo_stats_blur8+tlrc'[5]' \
	sub-023   early go    ${derDir}/sub-023/gonogo_stats_blur8+tlrc'[1]' \
	sub-023   early nogo  ${derDir}/sub-023/gonogo_stats_blur8+tlrc'[5]' \
	sub-024   early go    ${derDir}/sub-024/gonogo_stats_blur8+tlrc'[1]' \
	sub-024   early nogo  ${derDir}/sub-024/gonogo_stats_blur8+tlrc'[5]' \
	sub-026   late  go    ${derDir}/sub-026/gonogo_stats_blur8+tlrc'[1]' \
	sub-026   late  nogo  ${derDir}/sub-026/gonogo_stats_blur8+tlrc'[5]' \
	sub-028   early go    ${derDir}/sub-028/gonogo_stats_blur8+tlrc'[1]' \
	sub-028   early nogo  ${derDir}/sub-028/gonogo_stats_blur8+tlrc'[5]' \
	sub-030   late  go    ${derDir}/sub-030/gonogo_stats_blur8+tlrc'[1]' \
	sub-030   late  nogo  ${derDir}/sub-030/gonogo_stats_blur8+tlrc'[5]' \
	sub-035   early go    ${derDir}/sub-035/gonogo_stats_blur8+tlrc'[1]' \
	sub-035   early nogo  ${derDir}/sub-035/gonogo_stats_blur8+tlrc'[5]' \
	sub-037   early go    ${derDir}/sub-037/gonogo_stats_blur8+tlrc'[1]' \
	sub-037   early nogo  ${derDir}/sub-037/gonogo_stats_blur8+tlrc'[5]' \
	sub-038   late  go    ${derDir}/sub-038/gonogo_stats_blur8+tlrc'[1]' \
	sub-038   late  nogo  ${derDir}/sub-038/gonogo_stats_blur8+tlrc'[5]' \
	sub-039   early go    ${derDir}/sub-039/gonogo_stats_blur8+tlrc'[1]' \
	sub-039   early nogo  ${derDir}/sub-039/gonogo_stats_blur8+tlrc'[5]' \
	sub-040   early go    ${derDir}/sub-040/gonogo_stats_blur8+tlrc'[1]' \
	sub-040   early nogo  ${derDir}/sub-040/gonogo_stats_blur8+tlrc'[5]' \
	sub-041   early go    ${derDir}/sub-041/gonogo_stats_blur8+tlrc'[1]' \
	sub-041   early nogo  ${derDir}/sub-041/gonogo_stats_blur8+tlrc'[5]' \
	sub-042   early go    ${derDir}/sub-042/gonogo_stats_blur8+tlrc'[1]' \
	sub-042   early nogo  ${derDir}/sub-042/gonogo_stats_blur8+tlrc'[5]' \
	sub-043   early go    ${derDir}/sub-043/gonogo_stats_blur8+tlrc'[1]' \
	sub-043   early nogo  ${derDir}/sub-043/gonogo_stats_blur8+tlrc'[5]' \
	sub-046   early go    ${derDir}/sub-046/gonogo_stats_blur8+tlrc'[1]' \
	sub-046   early nogo  ${derDir}/sub-046/gonogo_stats_blur8+tlrc'[5]' \
	sub-047   late  go    ${derDir}/sub-047/gonogo_stats_blur8+tlrc'[1]' \
	sub-047   late  nogo  ${derDir}/sub-047/gonogo_stats_blur8+tlrc'[5]' \
	sub-049   early go    ${derDir}/sub-049/gonogo_stats_blur8+tlrc'[1]' \
	sub-049   early nogo  ${derDir}/sub-049/gonogo_stats_blur8+tlrc'[5]' \
	sub-051   late  go    ${derDir}/sub-051/gonogo_stats_blur8+tlrc'[1]' \
	sub-051   late  nogo  ${derDir}/sub-051/gonogo_stats_blur8+tlrc'[5]' \
	sub-052   early go    ${derDir}/sub-052/gonogo_stats_blur8+tlrc'[1]' \
	sub-052   early nogo  ${derDir}/sub-052/gonogo_stats_blur8+tlrc'[5]' \
	sub-054   early go    ${derDir}/sub-054/gonogo_stats_blur8+tlrc'[1]' \
	sub-054   early nogo  ${derDir}/sub-054/gonogo_stats_blur8+tlrc'[5]'
fi
 

#  social jetlag dicotomous


outPre=MVM2_SJL_dic

if [ ! -f ${outDir}/${outPre}+tlrc.HEAD ]; then
	3dMVM -prefix $outPre \
	-jobs 8 \
	-mask $mask \
	-bsVars SJL_dic \
	-wsVars taskConds \
	-num_glt 1 \
	-gltLabel 1 sjlno-yes -gltCode 1 'SJL_dic : 1*nosjl -1*yessjl' \
	-dataTable \
	Subj       SJL_dic    taskConds    InputFile \
	sub-001   nosjl   go    ${derDir}/sub-001/gonogo_stats_blur8+tlrc'[1]' \
	sub-001   nosjl   nogo  ${derDir}/sub-001/gonogo_stats_blur8+tlrc'[5]' \
	sub-002   nosjl   go    ${derDir}/sub-002/gonogo_stats_blur8+tlrc'[1]' \
	sub-002   nosjl   nogo  ${derDir}/sub-002/gonogo_stats_blur8+tlrc'[5]' \
	sub-003   nosjl   go    ${derDir}/sub-003/gonogo_stats_blur8+tlrc'[1]' \
	sub-003   nosjl   nogo  ${derDir}/sub-003/gonogo_stats_blur8+tlrc'[5]' \
	sub-004   yessjl go    ${derDir}/sub-004/gonogo_stats_blur8+tlrc'[1]' \
	sub-004   yessjl nogo  ${derDir}/sub-004/gonogo_stats_blur8+tlrc'[5]' \
	sub-005   yessjl go    ${derDir}/sub-005/gonogo_stats_blur8+tlrc'[1]' \
	sub-005   yessjl nogo  ${derDir}/sub-005/gonogo_stats_blur8+tlrc'[5]' \
	sub-006   nosjl  go    ${derDir}/sub-006/gonogo_stats_blur8+tlrc'[1]' \
	sub-006   nosjl  nogo  ${derDir}/sub-006/gonogo_stats_blur8+tlrc'[5]' \
	sub-007   nosjl  go    ${derDir}/sub-007/gonogo_stats_blur8+tlrc'[1]' \
	sub-007   nosjl  nogo  ${derDir}/sub-007/gonogo_stats_blur8+tlrc'[5]' \
	sub-010   yessjl go    ${derDir}/sub-010/gonogo_stats_blur8+tlrc'[1]' \
	sub-010   yessjl nogo  ${derDir}/sub-010/gonogo_stats_blur8+tlrc'[5]' \
	sub-011   yessjl go    ${derDir}/sub-011/gonogo_stats_blur8+tlrc'[1]' \
	sub-011   yessjl nogo  ${derDir}/sub-011/gonogo_stats_blur8+tlrc'[5]' \
	sub-013   yessjl go    ${derDir}/sub-013/gonogo_stats_blur8+tlrc'[1]' \
	sub-013   yessjl nogo  ${derDir}/sub-013/gonogo_stats_blur8+tlrc'[5]' \
	sub-014   nosjl  go    ${derDir}/sub-014/gonogo_stats_blur8+tlrc'[1]' \
	sub-014   nosjl  nogo  ${derDir}/sub-014/gonogo_stats_blur8+tlrc'[5]' \
	sub-015   nosjl  go    ${derDir}/sub-015/gonogo_stats_blur8+tlrc'[1]' \
	sub-015   nosjl  nogo  ${derDir}/sub-015/gonogo_stats_blur8+tlrc'[5]' \
	sub-016   yessjl go    ${derDir}/sub-016/gonogo_stats_blur8+tlrc'[1]' \
	sub-016   yessjl nogo  ${derDir}/sub-016/gonogo_stats_blur8+tlrc'[5]' \
	sub-018   nosjl  go    ${derDir}/sub-018/gonogo_stats_blur8+tlrc'[1]' \
	sub-018   nosjl  nogo  ${derDir}/sub-018/gonogo_stats_blur8+tlrc'[5]' \
	sub-019   yessjl go    ${derDir}/sub-019/gonogo_stats_blur8+tlrc'[1]' \
	sub-019   yessjl nogo  ${derDir}/sub-019/gonogo_stats_blur8+tlrc'[5]' \
	sub-020   nosjl go    ${derDir}/sub-020/gonogo_stats_blur8+tlrc'[1]' \
	sub-020   nosjl nogo  ${derDir}/sub-020/gonogo_stats_blur8+tlrc'[5]' \
	sub-021   yessjl go    ${derDir}/sub-021/gonogo_stats_blur8+tlrc'[1]' \
	sub-021   yessjl nogo  ${derDir}/sub-021/gonogo_stats_blur8+tlrc'[5]' \
	sub-022   yessjl go    ${derDir}/sub-022/gonogo_stats_blur8+tlrc'[1]' \
	sub-022   yessjl nogo  ${derDir}/sub-022/gonogo_stats_blur8+tlrc'[5]' \
	sub-023   yessjl go    ${derDir}/sub-023/gonogo_stats_blur8+tlrc'[1]' \
	sub-023   yessjl nogo  ${derDir}/sub-023/gonogo_stats_blur8+tlrc'[5]' \
	sub-024   yessjl go    ${derDir}/sub-024/gonogo_stats_blur8+tlrc'[1]' \
	sub-024   yessjl nogo  ${derDir}/sub-024/gonogo_stats_blur8+tlrc'[5]' \
	sub-026   nosjl go    ${derDir}/sub-026/gonogo_stats_blur8+tlrc'[1]' \
	sub-026   nosjl nogo  ${derDir}/sub-026/gonogo_stats_blur8+tlrc'[5]' \
	sub-028   nosjl go    ${derDir}/sub-028/gonogo_stats_blur8+tlrc'[1]' \
	sub-028   nosjl nogo  ${derDir}/sub-028/gonogo_stats_blur8+tlrc'[5]' \
	sub-030   nosjl go    ${derDir}/sub-030/gonogo_stats_blur8+tlrc'[1]' \
	sub-030   nosjl nogo  ${derDir}/sub-030/gonogo_stats_blur8+tlrc'[5]' \
	sub-032   nosjl go    ${derDir}/sub-032/gonogo_stats_blur8+tlrc'[1]' \
	sub-032   nosjl nogo  ${derDir}/sub-032/gonogo_stats_blur8+tlrc'[5]' \
	sub-035   nosjl go    ${derDir}/sub-035/gonogo_stats_blur8+tlrc'[1]' \
	sub-035   nosjl nogo  ${derDir}/sub-035/gonogo_stats_blur8+tlrc'[5]' \
	sub-036   nosjl go    ${derDir}/sub-036/gonogo_stats_blur8+tlrc'[1]' \
	sub-036   nosjl nogo  ${derDir}/sub-036/gonogo_stats_blur8+tlrc'[5]' \
	sub-037   nosjl go    ${derDir}/sub-037/gonogo_stats_blur8+tlrc'[1]' \
	sub-037   nosjl nogo  ${derDir}/sub-037/gonogo_stats_blur8+tlrc'[5]' \
	sub-039   yessjl go    ${derDir}/sub-039/gonogo_stats_blur8+tlrc'[1]' \
	sub-039   yessjl nogo  ${derDir}/sub-039/gonogo_stats_blur8+tlrc'[5]' \
	sub-041   nosjl go    ${derDir}/sub-041/gonogo_stats_blur8+tlrc'[1]' \
	sub-041   nosjl nogo  ${derDir}/sub-041/gonogo_stats_blur8+tlrc'[5]' \
	sub-042   nosjl go    ${derDir}/sub-042/gonogo_stats_blur8+tlrc'[1]' \
	sub-042   nosjl nogo  ${derDir}/sub-042/gonogo_stats_blur8+tlrc'[5]' \
	sub-043   yessjl go    ${derDir}/sub-043/gonogo_stats_blur8+tlrc'[1]' \
	sub-043   yessjl nogo  ${derDir}/sub-043/gonogo_stats_blur8+tlrc'[5]' \
	sub-046   nosjl go    ${derDir}/sub-046/gonogo_stats_blur8+tlrc'[1]' \
	sub-046   nosjl nogo  ${derDir}/sub-046/gonogo_stats_blur8+tlrc'[5]' \
	sub-047   yessjl go    ${derDir}/sub-047/gonogo_stats_blur8+tlrc'[1]' \
	sub-047   yessjl nogo  ${derDir}/sub-047/gonogo_stats_blur8+tlrc'[5]' \
	sub-049   yessjl go    ${derDir}/sub-049/gonogo_stats_blur8+tlrc'[1]' \
	sub-049   yessjl nogo  ${derDir}/sub-049/gonogo_stats_blur8+tlrc'[5]' \
	sub-050   nosjl go    ${derDir}/sub-050/gonogo_stats_blur8+tlrc'[1]' \
	sub-050   nosjl nogo  ${derDir}/sub-050/gonogo_stats_blur8+tlrc'[5]' \
	sub-051   nosjl go    ${derDir}/sub-051/gonogo_stats_blur8+tlrc'[1]' \
	sub-051   nosjl nogo  ${derDir}/sub-051/gonogo_stats_blur8+tlrc'[5]' \
	sub-052   yessjl go    ${derDir}/sub-052/gonogo_stats_blur8+tlrc'[1]' \
	sub-052   yessjl nogo  ${derDir}/sub-052/gonogo_stats_blur8+tlrc'[5]'

fi

#  duration dichotomous

outPre=MVM3_DURA_dic

if [ ! -f ${outDir}/${outPre}+tlrc.HEAD ]; then
	3dMVM -prefix $outPre \
	-jobs 8 \
	-mask $mask \
	-bsVars DURA_dic \
	-wsVars taskConds \
	-num_glt 2 \
	-gltLabel 1 adequate-inadequate -gltCode 1 'DURA_dic : 1*adequate -1*inadequate' \
    -gltLabel 2 inadequate-adequate -gltCode 2 'DURA_dic : -1*adequate 1*inadequate' \
	-dataTable \
	Subj       DURA_dic  taskConds    InputFile \
	sub-001   adequate    go    ${derDir}/sub-001/gonogo_stats_blur8+tlrc'[1]' \
	sub-001   adequate    nogo  ${derDir}/sub-001/gonogo_stats_blur8+tlrc'[5]' \
	sub-002   adequate    go    ${derDir}/sub-002/gonogo_stats_blur8+tlrc'[1]' \
	sub-002   adequate    nogo  ${derDir}/sub-002/gonogo_stats_blur8+tlrc'[5]' \
	sub-003   inadequate    go    ${derDir}/sub-003/gonogo_stats_blur8+tlrc'[1]' \
	sub-003   inadequate    nogo  ${derDir}/sub-003/gonogo_stats_blur8+tlrc'[5]' \
	sub-004   adequate    go    ${derDir}/sub-004/gonogo_stats_blur8+tlrc'[1]' \
	sub-004   adequate    nogo  ${derDir}/sub-004/gonogo_stats_blur8+tlrc'[5]' \
	sub-005   adequate    go    ${derDir}/sub-005/gonogo_stats_blur8+tlrc'[1]' \
	sub-005   adequate    nogo  ${derDir}/sub-005/gonogo_stats_blur8+tlrc'[5]' \
	sub-006   inadequate    go    ${derDir}/sub-006/gonogo_stats_blur8+tlrc'[1]' \
	sub-006   inadequate    nogo  ${derDir}/sub-006/gonogo_stats_blur8+tlrc'[5]' \
	sub-007   inadequate    go    ${derDir}/sub-007/gonogo_stats_blur8+tlrc'[1]' \
	sub-007   inadequate    nogo  ${derDir}/sub-007/gonogo_stats_blur8+tlrc'[5]' \
	sub-010   inadequate    go    ${derDir}/sub-010/gonogo_stats_blur8+tlrc'[1]' \
	sub-010   inadequate    nogo  ${derDir}/sub-010/gonogo_stats_blur8+tlrc'[5]' \
	sub-011   inadequate    go    ${derDir}/sub-011/gonogo_stats_blur8+tlrc'[1]' \
	sub-011   inadequate    nogo  ${derDir}/sub-011/gonogo_stats_blur8+tlrc'[5]' \
	sub-013   inadequate    go    ${derDir}/sub-013/gonogo_stats_blur8+tlrc'[1]' \
	sub-013   inadequate    nogo  ${derDir}/sub-013/gonogo_stats_blur8+tlrc'[5]' \
	sub-014   inadequate    go    ${derDir}/sub-014/gonogo_stats_blur8+tlrc'[1]' \
	sub-014   inadequate    nogo  ${derDir}/sub-014/gonogo_stats_blur8+tlrc'[5]' \
	sub-015   inadequate    go    ${derDir}/sub-015/gonogo_stats_blur8+tlrc'[1]' \
	sub-015   inadequate    nogo  ${derDir}/sub-015/gonogo_stats_blur8+tlrc'[5]' \
	sub-016   inadequate    go    ${derDir}/sub-016/gonogo_stats_blur8+tlrc'[1]' \
	sub-016   inadequate    nogo  ${derDir}/sub-016/gonogo_stats_blur8+tlrc'[5]' \
	sub-018   adequate    go    ${derDir}/sub-018/gonogo_stats_blur8+tlrc'[1]' \
	sub-018   adequate    nogo  ${derDir}/sub-018/gonogo_stats_blur8+tlrc'[5]' \
	sub-019   adequate    go    ${derDir}/sub-019/gonogo_stats_blur8+tlrc'[1]' \
	sub-019   adequate    nogo  ${derDir}/sub-019/gonogo_stats_blur8+tlrc'[5]' \
	sub-020   inadequate    go    ${derDir}/sub-020/gonogo_stats_blur8+tlrc'[1]' \
	sub-020   inadequate    nogo  ${derDir}/sub-020/gonogo_stats_blur8+tlrc'[5]' \
	sub-021   inadequate    go    ${derDir}/sub-021/gonogo_stats_blur8+tlrc'[1]' \
	sub-021   inadequate    nogo  ${derDir}/sub-021/gonogo_stats_blur8+tlrc'[5]' \
	sub-022   inadequate    go    ${derDir}/sub-022/gonogo_stats_blur8+tlrc'[1]' \
	sub-022   inadequate    nogo  ${derDir}/sub-022/gonogo_stats_blur8+tlrc'[5]' \
	sub-023   inadequate    go    ${derDir}/sub-023/gonogo_stats_blur8+tlrc'[1]' \
	sub-023   inadequate    nogo  ${derDir}/sub-023/gonogo_stats_blur8+tlrc'[5]' \
	sub-024   inadequate    go    ${derDir}/sub-024/gonogo_stats_blur8+tlrc'[1]' \
	sub-024   inadequate    nogo  ${derDir}/sub-024/gonogo_stats_blur8+tlrc'[5]' \
	sub-026   inadequate    go    ${derDir}/sub-026/gonogo_stats_blur8+tlrc'[1]' \
	sub-026   inadequate    nogo  ${derDir}/sub-026/gonogo_stats_blur8+tlrc'[5]' \
	sub-028   inadequate    go    ${derDir}/sub-028/gonogo_stats_blur8+tlrc'[1]' \
	sub-028   inadequate    nogo  ${derDir}/sub-028/gonogo_stats_blur8+tlrc'[5]' \
	sub-030   adequate    go    ${derDir}/sub-030/gonogo_stats_blur8+tlrc'[1]' \
	sub-030   adequate    nogo  ${derDir}/sub-030/gonogo_stats_blur8+tlrc'[5]' \
	sub-032   inadequate    go    ${derDir}/sub-032/gonogo_stats_blur8+tlrc'[1]' \
	sub-032   inadequate    nogo  ${derDir}/sub-032/gonogo_stats_blur8+tlrc'[5]' \
	sub-035   inadequate    go    ${derDir}/sub-035/gonogo_stats_blur8+tlrc'[1]' \
	sub-035   inadequate    nogo  ${derDir}/sub-035/gonogo_stats_blur8+tlrc'[5]' \
	sub-036   inadequate    go    ${derDir}/sub-036/gonogo_stats_blur8+tlrc'[1]' \
	sub-036   inadequate    nogo  ${derDir}/sub-036/gonogo_stats_blur8+tlrc'[5]' \
	sub-037   inadequate    go    ${derDir}/sub-037/gonogo_stats_blur8+tlrc'[1]' \
	sub-037   inadequate    nogo  ${derDir}/sub-037/gonogo_stats_blur8+tlrc'[5]' \
	sub-039   adequate    go    ${derDir}/sub-039/gonogo_stats_blur8+tlrc'[1]' \
	sub-039   adequate    nogo  ${derDir}/sub-039/gonogo_stats_blur8+tlrc'[5]' \
	sub-041   inadequate    go    ${derDir}/sub-041/gonogo_stats_blur8+tlrc'[1]' \
	sub-041   inadequate    nogo  ${derDir}/sub-041/gonogo_stats_blur8+tlrc'[5]' \
	sub-042   inadequate    go    ${derDir}/sub-042/gonogo_stats_blur8+tlrc'[1]' \
	sub-042   inadequate    nogo  ${derDir}/sub-042/gonogo_stats_blur8+tlrc'[5]' \
	sub-043   adequate    go    ${derDir}/sub-043/gonogo_stats_blur8+tlrc'[1]' \
	sub-043   adequate    nogo  ${derDir}/sub-043/gonogo_stats_blur8+tlrc'[5]' \
	sub-046   inadequate    go    ${derDir}/sub-046/gonogo_stats_blur8+tlrc'[1]' \
	sub-046   inadequate    nogo  ${derDir}/sub-046/gonogo_stats_blur8+tlrc'[5]' \
	sub-047   inadequate    go    ${derDir}/sub-047/gonogo_stats_blur8+tlrc'[1]' \
	sub-047   inadequate    nogo  ${derDir}/sub-047/gonogo_stats_blur8+tlrc'[5]' \
	sub-049   inadequate    go    ${derDir}/sub-049/gonogo_stats_blur8+tlrc'[1]' \
	sub-049   inadequate    nogo  ${derDir}/sub-049/gonogo_stats_blur8+tlrc'[5]' \
	sub-050   inadequate    go    ${derDir}/sub-050/gonogo_stats_blur8+tlrc'[1]' \
	sub-050   inadequate    nogo  ${derDir}/sub-050/gonogo_stats_blur8+tlrc'[5]' \
	sub-051   adequate    go    ${derDir}/sub-051/gonogo_stats_blur8+tlrc'[1]' \
	sub-051   adequate    nogo  ${derDir}/sub-051/gonogo_stats_blur8+tlrc'[5]' \
	sub-052   adequate    go    ${derDir}/sub-052/gonogo_stats_blur8+tlrc'[1]' \
	sub-052   adequate    nogo  ${derDir}/sub-052/gonogo_stats_blur8+tlrc'[5]' \
	sub-054   inadequate    go    ${derDir}/sub-054/gonogo_stats_blur8+tlrc'[1]' \
	sub-054   inadequate    nogo  ${derDir}/sub-054/gonogo_stats_blur8+tlrc'[5]'
fi
