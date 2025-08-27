#!/bin/bash

# Regression analyses
derDir=/Volumes/Yorick/Duraccio_RAD/derivatives
outDir=${derDir}/grp-2025-08-27

mask=Intersection_GM_mask+tlrc

cd $outDir

# Regression 0: all factors

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
	sub-029 go  	${derDir}/sub-029/gonogo_stats_blur8+tlrc'[1]' \
	sub-029 nogo  	${derDir}/sub-029/gonogo_stats_blur8+tlrc'[5]' \
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


# Regression 1: circadian misalignment

outPre=MVM1_CMId

if [ ! -f ${outDir}/${outPre}+tlrc.HEAD ]; then
	3dMVM -prefix $outPre \
	-jobs 8 \
	-mask $mask \
	-bsVars CMId \
	-wsVars taskConds \
	-dataTable \
	Subj       CMId taskConds    InputFile \
	sub-001    2    go    ${derDir}/sub-001/gonogo_stats_blur8+tlrc'[1]' \
	sub-001    2    nogo  ${derDir}/sub-001/gonogo_stats_blur8+tlrc'[5]' \
	sub-002    2    go    ${derDir}/sub-002/gonogo_stats_blur8+tlrc'[1]' \
	sub-002    2    nogo  ${derDir}/sub-002/gonogo_stats_blur8+tlrc'[5]' \
	sub-003    2    go    ${derDir}/sub-003/gonogo_stats_blur8+tlrc'[1]' \
	sub-003    2    nogo  ${derDir}/sub-003/gonogo_stats_blur8+tlrc'[5]' \
	sub-004    2    go    ${derDir}/sub-004/gonogo_stats_blur8+tlrc'[1]' \
	sub-004    2    nogo  ${derDir}/sub-004/gonogo_stats_blur8+tlrc'[5]' \
	sub-005    2    go    ${derDir}/sub-005/gonogo_stats_blur8+tlrc'[1]' \
	sub-005    2    nogo  ${derDir}/sub-005/gonogo_stats_blur8+tlrc'[5]' \
	sub-006    2    go    ${derDir}/sub-006/gonogo_stats_blur8+tlrc'[1]' \
	sub-006    2    nogo  ${derDir}/sub-006/gonogo_stats_blur8+tlrc'[5]' \
	sub-007    2    go    ${derDir}/sub-007/gonogo_stats_blur8+tlrc'[1]' \
	sub-007    2    nogo  ${derDir}/sub-007/gonogo_stats_blur8+tlrc'[5]' \
	sub-010    2    go    ${derDir}/sub-010/gonogo_stats_blur8+tlrc'[1]' \
	sub-010    2    nogo  ${derDir}/sub-010/gonogo_stats_blur8+tlrc'[5]' \
	sub-011    2    go    ${derDir}/sub-011/gonogo_stats_blur8+tlrc'[1]' \
	sub-011    2    nogo  ${derDir}/sub-011/gonogo_stats_blur8+tlrc'[5]' \
	sub-013    1    go    ${derDir}/sub-013/gonogo_stats_blur8+tlrc'[1]' \
	sub-013    1    nogo  ${derDir}/sub-013/gonogo_stats_blur8+tlrc'[5]' \
	sub-014    1    go    ${derDir}/sub-014/gonogo_stats_blur8+tlrc'[1]' \
	sub-014    1    nogo  ${derDir}/sub-014/gonogo_stats_blur8+tlrc'[5]' \
	sub-015    1    go    ${derDir}/sub-015/gonogo_stats_blur8+tlrc'[1]' \
	sub-015    1    nogo  ${derDir}/sub-015/gonogo_stats_blur8+tlrc'[5]' \
	sub-016    2    go    ${derDir}/sub-016/gonogo_stats_blur8+tlrc'[1]' \
	sub-016    2    nogo  ${derDir}/sub-016/gonogo_stats_blur8+tlrc'[5]' \
	sub-018    2    go    ${derDir}/sub-018/gonogo_stats_blur8+tlrc'[1]' \
	sub-018    2    nogo  ${derDir}/sub-018/gonogo_stats_blur8+tlrc'[5]' \
	sub-019    2    go    ${derDir}/sub-019/gonogo_stats_blur8+tlrc'[1]' \
	sub-019    2    nogo  ${derDir}/sub-019/gonogo_stats_blur8+tlrc'[5]' \
	sub-020    1    go    ${derDir}/sub-020/gonogo_stats_blur8+tlrc'[1]' \
	sub-020    1    nogo  ${derDir}/sub-020/gonogo_stats_blur8+tlrc'[5]' \
	sub-022    1    go    ${derDir}/sub-022/gonogo_stats_blur8+tlrc'[1]' \
	sub-022    1    nogo  ${derDir}/sub-022/gonogo_stats_blur8+tlrc'[5]' \
	sub-023    2    go    ${derDir}/sub-023/gonogo_stats_blur8+tlrc'[1]' \
	sub-023    2    nogo  ${derDir}/sub-023/gonogo_stats_blur8+tlrc'[5]' \
	sub-024    1    go    ${derDir}/sub-024/gonogo_stats_blur8+tlrc'[1]' \
	sub-024    1    nogo  ${derDir}/sub-024/gonogo_stats_blur8+tlrc'[5]' \
	sub-026    2    go    ${derDir}/sub-026/gonogo_stats_blur8+tlrc'[1]' \
	sub-026    2    nogo  ${derDir}/sub-026/gonogo_stats_blur8+tlrc'[5]' \
	sub-028    2    go    ${derDir}/sub-028/gonogo_stats_blur8+tlrc'[1]' \
	sub-028    2    nogo  ${derDir}/sub-028/gonogo_stats_blur8+tlrc'[5]' \
	sub-030    2    go    ${derDir}/sub-030/gonogo_stats_blur8+tlrc'[1]' \
	sub-030    2    nogo  ${derDir}/sub-030/gonogo_stats_blur8+tlrc'[5]' \
	sub-035    1    go    ${derDir}/sub-035/gonogo_stats_blur8+tlrc'[1]' \
	sub-035    1    nogo  ${derDir}/sub-035/gonogo_stats_blur8+tlrc'[5]' \
	sub-036    1    go    ${derDir}/sub-036/gonogo_stats_blur8+tlrc'[1]' \
	sub-036    1    nogo  ${derDir}/sub-036/gonogo_stats_blur8+tlrc'[5]' \
	sub-037    2    go    ${derDir}/sub-037/gonogo_stats_blur8+tlrc'[1]' \
	sub-037    2    nogo  ${derDir}/sub-037/gonogo_stats_blur8+tlrc'[5]' \
	sub-039    2    go    ${derDir}/sub-039/gonogo_stats_blur8+tlrc'[1]' \
	sub-039    2    nogo  ${derDir}/sub-039/gonogo_stats_blur8+tlrc'[5]' \
	sub-041    1    go    ${derDir}/sub-041/gonogo_stats_blur8+tlrc'[1]' \
	sub-041    1    nogo  ${derDir}/sub-041/gonogo_stats_blur8+tlrc'[5]' \
	sub-042    1    go    ${derDir}/sub-042/gonogo_stats_blur8+tlrc'[1]' \
	sub-042    1    nogo  ${derDir}/sub-042/gonogo_stats_blur8+tlrc'[5]' \
	sub-043    2    go    ${derDir}/sub-043/gonogo_stats_blur8+tlrc'[1]' \
	sub-043    2    nogo  ${derDir}/sub-043/gonogo_stats_blur8+tlrc'[5]' \
	sub-046    1    go    ${derDir}/sub-046/gonogo_stats_blur8+tlrc'[1]' \
	sub-046    1    nogo  ${derDir}/sub-046/gonogo_stats_blur8+tlrc'[5]' \
	sub-047    2    go    ${derDir}/sub-047/gonogo_stats_blur8+tlrc'[1]' \
	sub-047    2    nogo  ${derDir}/sub-047/gonogo_stats_blur8+tlrc'[5]' \
	sub-049    2    go    ${derDir}/sub-049/gonogo_stats_blur8+tlrc'[1]' \
	sub-049    2    nogo  ${derDir}/sub-049/gonogo_stats_blur8+tlrc'[5]' \
	sub-051    2    go    ${derDir}/sub-051/gonogo_stats_blur8+tlrc'[1]' \
	sub-051    2    nogo  ${derDir}/sub-051/gonogo_stats_blur8+tlrc'[5]' \
	sub-052    2    go    ${derDir}/sub-052/gonogo_stats_blur8+tlrc'[1]' \
	sub-052    2    nogo  ${derDir}/sub-052/gonogo_stats_blur8+tlrc'[5]' \
	sub-054    2    go    ${derDir}/sub-054/gonogo_stats_blur8+tlrc'[1]' \
	sub-054    2    nogo  ${derDir}/sub-054/gonogo_stats_blur8+tlrc'[5]'
fi


# Regression 5: DLMO dich

outPre=MVM1_DLMOd

if [ ! -f ${outDir}/${outPre}+tlrc.HEAD ]; then
	3dMVM -prefix $outPre \
	-jobs 8 \
	-mask $mask \
	-bsVars DLMOd \
	-wsVars taskConds \
	-dataTable \
	Subj       DLMOd  taskConds    InputFile \
	sub-001    1    go    ${derDir}/sub-001/gonogo_stats_blur8+tlrc'[1]' \
	sub-001    1    nogo  ${derDir}/sub-001/gonogo_stats_blur8+tlrc'[5]' \
	sub-002    1    go    ${derDir}/sub-002/gonogo_stats_blur8+tlrc'[1]' \
	sub-002    1    nogo  ${derDir}/sub-002/gonogo_stats_blur8+tlrc'[5]' \
	sub-003    1    go    ${derDir}/sub-003/gonogo_stats_blur8+tlrc'[1]' \
	sub-003    1    nogo  ${derDir}/sub-003/gonogo_stats_blur8+tlrc'[5]' \
	sub-004    1    go    ${derDir}/sub-004/gonogo_stats_blur8+tlrc'[1]' \
	sub-004    1    nogo  ${derDir}/sub-004/gonogo_stats_blur8+tlrc'[5]' \
	sub-005    2    go    ${derDir}/sub-005/gonogo_stats_blur8+tlrc'[1]' \
	sub-005    2    nogo  ${derDir}/sub-005/gonogo_stats_blur8+tlrc'[5]' \
	sub-006    2    go    ${derDir}/sub-006/gonogo_stats_blur8+tlrc'[1]' \
	sub-006    2    nogo  ${derDir}/sub-006/gonogo_stats_blur8+tlrc'[5]' \
	sub-007    2    go    ${derDir}/sub-007/gonogo_stats_blur8+tlrc'[1]' \
	sub-007    2    nogo  ${derDir}/sub-007/gonogo_stats_blur8+tlrc'[5]' \
	sub-008    2    go    ${derDir}/sub-008/gonogo_stats_blur8+tlrc'[1]' \
	sub-008    2    nogo  ${derDir}/sub-008/gonogo_stats_blur8+tlrc'[5]' \
	sub-010    2    go    ${derDir}/sub-010/gonogo_stats_blur8+tlrc'[1]' \
	sub-010    2    nogo  ${derDir}/sub-010/gonogo_stats_blur8+tlrc'[5]' \
	sub-011    2    go    ${derDir}/sub-011/gonogo_stats_blur8+tlrc'[1]' \
	sub-011    2    nogo  ${derDir}/sub-011/gonogo_stats_blur8+tlrc'[5]' \
	sub-013    1    go    ${derDir}/sub-013/gonogo_stats_blur8+tlrc'[1]' \
	sub-013    1    nogo  ${derDir}/sub-013/gonogo_stats_blur8+tlrc'[5]' \
	sub-014    1    go    ${derDir}/sub-014/gonogo_stats_blur8+tlrc'[1]' \
	sub-014    1    nogo  ${derDir}/sub-014/gonogo_stats_blur8+tlrc'[5]' \
	sub-015    1    go    ${derDir}/sub-015/gonogo_stats_blur8+tlrc'[1]' \
	sub-015    1    nogo  ${derDir}/sub-015/gonogo_stats_blur8+tlrc'[5]' \
	sub-016    1    go    ${derDir}/sub-016/gonogo_stats_blur8+tlrc'[1]' \
	sub-016    1    nogo  ${derDir}/sub-016/gonogo_stats_blur8+tlrc'[5]' \
	sub-018    1    go    ${derDir}/sub-018/gonogo_stats_blur8+tlrc'[1]' \
	sub-018    1    nogo  ${derDir}/sub-018/gonogo_stats_blur8+tlrc'[5]' \
	sub-019    2    go    ${derDir}/sub-019/gonogo_stats_blur8+tlrc'[1]' \
	sub-019    2    nogo  ${derDir}/sub-019/gonogo_stats_blur8+tlrc'[5]' \
	sub-020    1    go    ${derDir}/sub-020/gonogo_stats_blur8+tlrc'[1]' \
	sub-020    1    nogo  ${derDir}/sub-020/gonogo_stats_blur8+tlrc'[5]' \
	sub-022    2    go    ${derDir}/sub-022/gonogo_stats_blur8+tlrc'[1]' \
	sub-022    2    nogo  ${derDir}/sub-022/gonogo_stats_blur8+tlrc'[5]' \
	sub-023    1    go    ${derDir}/sub-023/gonogo_stats_blur8+tlrc'[1]' \
	sub-023    1    nogo  ${derDir}/sub-023/gonogo_stats_blur8+tlrc'[5]' \
	sub-024    1    go    ${derDir}/sub-024/gonogo_stats_blur8+tlrc'[1]' \
	sub-024    1    nogo  ${derDir}/sub-024/gonogo_stats_blur8+tlrc'[5]' \
	sub-026    2    go    ${derDir}/sub-026/gonogo_stats_blur8+tlrc'[1]' \
	sub-026    2    nogo  ${derDir}/sub-026/gonogo_stats_blur8+tlrc'[5]' \
	sub-028    1    go    ${derDir}/sub-028/gonogo_stats_blur8+tlrc'[1]' \
	sub-028    1    nogo  ${derDir}/sub-028/gonogo_stats_blur8+tlrc'[5]' \
	sub-030    2    go    ${derDir}/sub-030/gonogo_stats_blur8+tlrc'[1]' \
	sub-030    2    nogo  ${derDir}/sub-030/gonogo_stats_blur8+tlrc'[5]' \
	sub-035    1    go    ${derDir}/sub-035/gonogo_stats_blur8+tlrc'[1]' \
	sub-035    1    nogo  ${derDir}/sub-035/gonogo_stats_blur8+tlrc'[5]' \
	sub-036    1    go    ${derDir}/sub-036/gonogo_stats_blur8+tlrc'[1]' \
	sub-036    1    nogo  ${derDir}/sub-036/gonogo_stats_blur8+tlrc'[5]' \
	sub-037    2    go    ${derDir}/sub-037/gonogo_stats_blur8+tlrc'[1]' \
	sub-037    2    nogo  ${derDir}/sub-037/gonogo_stats_blur8+tlrc'[5]' \
	sub-038    1    go    ${derDir}/sub-038/gonogo_stats_blur8+tlrc'[1]' \
	sub-038    1    nogo  ${derDir}/sub-038/gonogo_stats_blur8+tlrc'[5]' \
	sub-039    1    go    ${derDir}/sub-039/gonogo_stats_blur8+tlrc'[1]' \
	sub-039    1    nogo  ${derDir}/sub-039/gonogo_stats_blur8+tlrc'[5]' \
	sub-040    1    go    ${derDir}/sub-040/gonogo_stats_blur8+tlrc'[1]' \
	sub-040    1    nogo  ${derDir}/sub-040/gonogo_stats_blur8+tlrc'[5]' \
	sub-041    1    go    ${derDir}/sub-041/gonogo_stats_blur8+tlrc'[1]' \
	sub-041    1    nogo  ${derDir}/sub-041/gonogo_stats_blur8+tlrc'[5]' \
	sub-042    1    go    ${derDir}/sub-042/gonogo_stats_blur8+tlrc'[1]' \
	sub-042    1    nogo  ${derDir}/sub-042/gonogo_stats_blur8+tlrc'[5]' \
	sub-043    1    go    ${derDir}/sub-043/gonogo_stats_blur8+tlrc'[1]' \
	sub-043    1    nogo  ${derDir}/sub-043/gonogo_stats_blur8+tlrc'[5]' \
	sub-046    1    go    ${derDir}/sub-046/gonogo_stats_blur8+tlrc'[1]' \
	sub-046    1    nogo  ${derDir}/sub-046/gonogo_stats_blur8+tlrc'[5]' \
	sub-047    2    go    ${derDir}/sub-047/gonogo_stats_blur8+tlrc'[1]' \
	sub-047    2    nogo  ${derDir}/sub-047/gonogo_stats_blur8+tlrc'[5]' \
	sub-049    1    go    ${derDir}/sub-049/gonogo_stats_blur8+tlrc'[1]' \
	sub-049    1    nogo  ${derDir}/sub-049/gonogo_stats_blur8+tlrc'[5]' \
	sub-051    2    go    ${derDir}/sub-051/gonogo_stats_blur8+tlrc'[1]' \
	sub-051    2    nogo  ${derDir}/sub-051/gonogo_stats_blur8+tlrc'[5]' \
	sub-052    1    go    ${derDir}/sub-052/gonogo_stats_blur8+tlrc'[1]' \
	sub-052    1    nogo  ${derDir}/sub-052/gonogo_stats_blur8+tlrc'[5]' \
	sub-054    1    go    ${derDir}/sub-054/gonogo_stats_blur8+tlrc'[1]' \
	sub-054    1    nogo  ${derDir}/sub-054/gonogo_stats_blur8+tlrc'[5]'
fi
 
# Regression 6: social jetlag dich

outPre=MVM1_SJLd

if [ ! -f ${outDir}/${outPre}+tlrc.HEAD ]; then
	3dMVM -prefix $outPre \
	-jobs 8 \
	-mask $mask \
	-bsVars SJLd \
	-wsVars taskConds \
	-dataTable \
	Subj       SJLd  taskConds    InputFile \
	sub-001    1    go    ${derDir}/sub-001/gonogo_stats_blur8+tlrc'[1]' \
	sub-001    1    nogo  ${derDir}/sub-001/gonogo_stats_blur8+tlrc'[5]' \
	sub-002    1    go    ${derDir}/sub-002/gonogo_stats_blur8+tlrc'[1]' \
	sub-002    1    nogo  ${derDir}/sub-002/gonogo_stats_blur8+tlrc'[5]' \
	sub-003    1    go    ${derDir}/sub-003/gonogo_stats_blur8+tlrc'[1]' \
	sub-003    1    nogo  ${derDir}/sub-003/gonogo_stats_blur8+tlrc'[5]' \
	sub-004    2    go    ${derDir}/sub-004/gonogo_stats_blur8+tlrc'[1]' \
	sub-004    2    nogo  ${derDir}/sub-004/gonogo_stats_blur8+tlrc'[5]' \
	sub-005    2    go    ${derDir}/sub-005/gonogo_stats_blur8+tlrc'[1]' \
	sub-005    2    nogo  ${derDir}/sub-005/gonogo_stats_blur8+tlrc'[5]' \
	sub-006    1    go    ${derDir}/sub-006/gonogo_stats_blur8+tlrc'[1]' \
	sub-006    1    nogo  ${derDir}/sub-006/gonogo_stats_blur8+tlrc'[5]' \
	sub-007    1    go    ${derDir}/sub-007/gonogo_stats_blur8+tlrc'[1]' \
	sub-007    1    nogo  ${derDir}/sub-007/gonogo_stats_blur8+tlrc'[5]' \
	sub-010    2    go    ${derDir}/sub-010/gonogo_stats_blur8+tlrc'[1]' \
	sub-010    2    nogo  ${derDir}/sub-010/gonogo_stats_blur8+tlrc'[5]' \
	sub-011    2    go    ${derDir}/sub-011/gonogo_stats_blur8+tlrc'[1]' \
	sub-011    2    nogo  ${derDir}/sub-011/gonogo_stats_blur8+tlrc'[5]' \
	sub-013    2    go    ${derDir}/sub-013/gonogo_stats_blur8+tlrc'[1]' \
	sub-013    2    nogo  ${derDir}/sub-013/gonogo_stats_blur8+tlrc'[5]' \
	sub-014    1    go    ${derDir}/sub-014/gonogo_stats_blur8+tlrc'[1]' \
	sub-014    1    nogo  ${derDir}/sub-014/gonogo_stats_blur8+tlrc'[5]' \
	sub-015    1    go    ${derDir}/sub-015/gonogo_stats_blur8+tlrc'[1]' \
	sub-015    1    nogo  ${derDir}/sub-015/gonogo_stats_blur8+tlrc'[5]' \
	sub-016    2    go    ${derDir}/sub-016/gonogo_stats_blur8+tlrc'[1]' \
	sub-016    2    nogo  ${derDir}/sub-016/gonogo_stats_blur8+tlrc'[5]' \
	sub-018    1    go    ${derDir}/sub-018/gonogo_stats_blur8+tlrc'[1]' \
	sub-018    1    nogo  ${derDir}/sub-018/gonogo_stats_blur8+tlrc'[5]' \
	sub-019    2    go    ${derDir}/sub-019/gonogo_stats_blur8+tlrc'[1]' \
	sub-019    2    nogo  ${derDir}/sub-019/gonogo_stats_blur8+tlrc'[5]' \
	sub-020    1    go    ${derDir}/sub-020/gonogo_stats_blur8+tlrc'[1]' \
	sub-020    1    nogo  ${derDir}/sub-020/gonogo_stats_blur8+tlrc'[5]' \
	sub-021    2    go    ${derDir}/sub-021/gonogo_stats_blur8+tlrc'[1]' \
	sub-021    2    nogo  ${derDir}/sub-021/gonogo_stats_blur8+tlrc'[5]' \
	sub-022    2    go    ${derDir}/sub-022/gonogo_stats_blur8+tlrc'[1]' \
	sub-022    2    nogo  ${derDir}/sub-022/gonogo_stats_blur8+tlrc'[5]' \
	sub-023    2    go    ${derDir}/sub-023/gonogo_stats_blur8+tlrc'[1]' \
	sub-023    2    nogo  ${derDir}/sub-023/gonogo_stats_blur8+tlrc'[5]' \
	sub-024    2    go    ${derDir}/sub-024/gonogo_stats_blur8+tlrc'[1]' \
	sub-024    2    nogo  ${derDir}/sub-024/gonogo_stats_blur8+tlrc'[5]' \
	sub-026    1    go    ${derDir}/sub-026/gonogo_stats_blur8+tlrc'[1]' \
	sub-026    1    nogo  ${derDir}/sub-026/gonogo_stats_blur8+tlrc'[5]' \
	sub-028    1    go    ${derDir}/sub-028/gonogo_stats_blur8+tlrc'[1]' \
	sub-028    1    nogo  ${derDir}/sub-028/gonogo_stats_blur8+tlrc'[5]' \
	sub-030    1    go    ${derDir}/sub-030/gonogo_stats_blur8+tlrc'[1]' \
	sub-030    1    nogo  ${derDir}/sub-030/gonogo_stats_blur8+tlrc'[5]' \
	sub-032    1    go    ${derDir}/sub-032/gonogo_stats_blur8+tlrc'[1]' \
	sub-032    1    nogo  ${derDir}/sub-032/gonogo_stats_blur8+tlrc'[5]' \
	sub-035    1    go    ${derDir}/sub-035/gonogo_stats_blur8+tlrc'[1]' \
	sub-035    1    nogo  ${derDir}/sub-035/gonogo_stats_blur8+tlrc'[5]' \
	sub-036    1    go    ${derDir}/sub-036/gonogo_stats_blur8+tlrc'[1]' \
	sub-036    1    nogo  ${derDir}/sub-036/gonogo_stats_blur8+tlrc'[5]' \
	sub-037    1    go    ${derDir}/sub-037/gonogo_stats_blur8+tlrc'[1]' \
	sub-037    1    nogo  ${derDir}/sub-037/gonogo_stats_blur8+tlrc'[5]' \
	sub-039    2    go    ${derDir}/sub-039/gonogo_stats_blur8+tlrc'[1]' \
	sub-039    2    nogo  ${derDir}/sub-039/gonogo_stats_blur8+tlrc'[5]' \
	sub-041    1    go    ${derDir}/sub-041/gonogo_stats_blur8+tlrc'[1]' \
	sub-041    1    nogo  ${derDir}/sub-041/gonogo_stats_blur8+tlrc'[5]' \
	sub-042    1    go    ${derDir}/sub-042/gonogo_stats_blur8+tlrc'[1]' \
	sub-042    1    nogo  ${derDir}/sub-042/gonogo_stats_blur8+tlrc'[5]' \
	sub-043    2    go    ${derDir}/sub-043/gonogo_stats_blur8+tlrc'[1]' \
	sub-043    2    nogo  ${derDir}/sub-043/gonogo_stats_blur8+tlrc'[5]' \
	sub-046    1    go    ${derDir}/sub-046/gonogo_stats_blur8+tlrc'[1]' \
	sub-046    1    nogo  ${derDir}/sub-046/gonogo_stats_blur8+tlrc'[5]' \
	sub-047    2    go    ${derDir}/sub-047/gonogo_stats_blur8+tlrc'[1]' \
	sub-047    2    nogo  ${derDir}/sub-047/gonogo_stats_blur8+tlrc'[5]' \
	sub-049    2    go    ${derDir}/sub-049/gonogo_stats_blur8+tlrc'[1]' \
	sub-049    2    nogo  ${derDir}/sub-049/gonogo_stats_blur8+tlrc'[5]' \
	sub-050    1    go    ${derDir}/sub-050/gonogo_stats_blur8+tlrc'[1]' \
	sub-050    1    nogo  ${derDir}/sub-050/gonogo_stats_blur8+tlrc'[5]' \
	sub-051    1    go    ${derDir}/sub-051/gonogo_stats_blur8+tlrc'[1]' \
	sub-051    1    nogo  ${derDir}/sub-051/gonogo_stats_blur8+tlrc'[5]' \
	sub-052    2    go    ${derDir}/sub-052/gonogo_stats_blur8+tlrc'[1]' \
	sub-052    2    nogo  ${derDir}/sub-052/gonogo_stats_blur8+tlrc'[5]'
fi

# Regression 8: duration dich

outPre=MVM1_DURd

if [ ! -f ${outDir}/${outPre}+tlrc.HEAD ]; then
	3dMVM -prefix $outPre \
	-jobs 8 \
	-mask $mask \
	-bsVars DURd \
	-wsVars taskConds \
	-dataTable \
	Subj       DURd taskConds    InputFile \
	sub-001    2    go    ${derDir}/sub-001/gonogo_stats_blur8+tlrc'[1]' \
	sub-001    2    nogo  ${derDir}/sub-001/gonogo_stats_blur8+tlrc'[5]' \
	sub-002    2    go    ${derDir}/sub-002/gonogo_stats_blur8+tlrc'[1]' \
	sub-002    2    nogo  ${derDir}/sub-002/gonogo_stats_blur8+tlrc'[5]' \
	sub-003    1    go    ${derDir}/sub-003/gonogo_stats_blur8+tlrc'[1]' \
	sub-003    1    nogo  ${derDir}/sub-003/gonogo_stats_blur8+tlrc'[5]' \
	sub-004    2    go    ${derDir}/sub-004/gonogo_stats_blur8+tlrc'[1]' \
	sub-004    2    nogo  ${derDir}/sub-004/gonogo_stats_blur8+tlrc'[5]' \
	sub-005    2    go    ${derDir}/sub-005/gonogo_stats_blur8+tlrc'[1]' \
	sub-005    2    nogo  ${derDir}/sub-005/gonogo_stats_blur8+tlrc'[5]' \
	sub-006    1    go    ${derDir}/sub-006/gonogo_stats_blur8+tlrc'[1]' \
	sub-006    1    nogo  ${derDir}/sub-006/gonogo_stats_blur8+tlrc'[5]' \
	sub-007    1    go    ${derDir}/sub-007/gonogo_stats_blur8+tlrc'[1]' \
	sub-007    1    nogo  ${derDir}/sub-007/gonogo_stats_blur8+tlrc'[5]' \
	sub-010    1    go    ${derDir}/sub-010/gonogo_stats_blur8+tlrc'[1]' \
	sub-010    1    nogo  ${derDir}/sub-010/gonogo_stats_blur8+tlrc'[5]' \
	sub-011    1    go    ${derDir}/sub-011/gonogo_stats_blur8+tlrc'[1]' \
	sub-011    1    nogo  ${derDir}/sub-011/gonogo_stats_blur8+tlrc'[5]' \
	sub-013    1    go    ${derDir}/sub-013/gonogo_stats_blur8+tlrc'[1]' \
	sub-013    1    nogo  ${derDir}/sub-013/gonogo_stats_blur8+tlrc'[5]' \
	sub-014    1    go    ${derDir}/sub-014/gonogo_stats_blur8+tlrc'[1]' \
	sub-014    1    nogo  ${derDir}/sub-014/gonogo_stats_blur8+tlrc'[5]' \
	sub-015    1    go    ${derDir}/sub-015/gonogo_stats_blur8+tlrc'[1]' \
	sub-015    1    nogo  ${derDir}/sub-015/gonogo_stats_blur8+tlrc'[5]' \
	sub-016    1    go    ${derDir}/sub-016/gonogo_stats_blur8+tlrc'[1]' \
	sub-016    1    nogo  ${derDir}/sub-016/gonogo_stats_blur8+tlrc'[5]' \
	sub-018    2    go    ${derDir}/sub-018/gonogo_stats_blur8+tlrc'[1]' \
	sub-018    2    nogo  ${derDir}/sub-018/gonogo_stats_blur8+tlrc'[5]' \
	sub-019    2    go    ${derDir}/sub-019/gonogo_stats_blur8+tlrc'[1]' \
	sub-019    2    nogo  ${derDir}/sub-019/gonogo_stats_blur8+tlrc'[5]' \
	sub-020    1    go    ${derDir}/sub-020/gonogo_stats_blur8+tlrc'[1]' \
	sub-020    1    nogo  ${derDir}/sub-020/gonogo_stats_blur8+tlrc'[5]' \
	sub-021    1    go    ${derDir}/sub-021/gonogo_stats_blur8+tlrc'[1]' \
	sub-021    1    nogo  ${derDir}/sub-021/gonogo_stats_blur8+tlrc'[5]' \
	sub-022    1    go    ${derDir}/sub-022/gonogo_stats_blur8+tlrc'[1]' \
	sub-022    1    nogo  ${derDir}/sub-022/gonogo_stats_blur8+tlrc'[5]' \
	sub-023    1    go    ${derDir}/sub-023/gonogo_stats_blur8+tlrc'[1]' \
	sub-023    1    nogo  ${derDir}/sub-023/gonogo_stats_blur8+tlrc'[5]' \
	sub-024    1    go    ${derDir}/sub-024/gonogo_stats_blur8+tlrc'[1]' \
	sub-024    1    nogo  ${derDir}/sub-024/gonogo_stats_blur8+tlrc'[5]' \
	sub-026    1    go    ${derDir}/sub-026/gonogo_stats_blur8+tlrc'[1]' \
	sub-026    1    nogo  ${derDir}/sub-026/gonogo_stats_blur8+tlrc'[5]' \
	sub-028    1    go    ${derDir}/sub-028/gonogo_stats_blur8+tlrc'[1]' \
	sub-028    1    nogo  ${derDir}/sub-028/gonogo_stats_blur8+tlrc'[5]' \
	sub-030    2    go    ${derDir}/sub-030/gonogo_stats_blur8+tlrc'[1]' \
	sub-030    2    nogo  ${derDir}/sub-030/gonogo_stats_blur8+tlrc'[5]' \
	sub-032    1    go    ${derDir}/sub-032/gonogo_stats_blur8+tlrc'[1]' \
	sub-032    1    nogo  ${derDir}/sub-032/gonogo_stats_blur8+tlrc'[5]' \
	sub-035    1    go    ${derDir}/sub-035/gonogo_stats_blur8+tlrc'[1]' \
	sub-035    1    nogo  ${derDir}/sub-035/gonogo_stats_blur8+tlrc'[5]' \
	sub-036    1    go    ${derDir}/sub-036/gonogo_stats_blur8+tlrc'[1]' \
	sub-036    1    nogo  ${derDir}/sub-036/gonogo_stats_blur8+tlrc'[5]' \
	sub-037    1    go    ${derDir}/sub-037/gonogo_stats_blur8+tlrc'[1]' \
	sub-037    1    nogo  ${derDir}/sub-037/gonogo_stats_blur8+tlrc'[5]' \
	sub-039    2    go    ${derDir}/sub-039/gonogo_stats_blur8+tlrc'[1]' \
	sub-039    2    nogo  ${derDir}/sub-039/gonogo_stats_blur8+tlrc'[5]' \
	sub-041    1    go    ${derDir}/sub-041/gonogo_stats_blur8+tlrc'[1]' \
	sub-041    1    nogo  ${derDir}/sub-041/gonogo_stats_blur8+tlrc'[5]' \
	sub-042    1    go    ${derDir}/sub-042/gonogo_stats_blur8+tlrc'[1]' \
	sub-042    1    nogo  ${derDir}/sub-042/gonogo_stats_blur8+tlrc'[5]' \
	sub-043    2    go    ${derDir}/sub-043/gonogo_stats_blur8+tlrc'[1]' \
	sub-043    2    nogo  ${derDir}/sub-043/gonogo_stats_blur8+tlrc'[5]' \
	sub-046    1    go    ${derDir}/sub-046/gonogo_stats_blur8+tlrc'[1]' \
	sub-046    1    nogo  ${derDir}/sub-046/gonogo_stats_blur8+tlrc'[5]' \
	sub-047    1    go    ${derDir}/sub-047/gonogo_stats_blur8+tlrc'[1]' \
	sub-047    1    nogo  ${derDir}/sub-047/gonogo_stats_blur8+tlrc'[5]' \
	sub-049    1    go    ${derDir}/sub-049/gonogo_stats_blur8+tlrc'[1]' \
	sub-049    1    nogo  ${derDir}/sub-049/gonogo_stats_blur8+tlrc'[5]' \
	sub-050    1    go    ${derDir}/sub-050/gonogo_stats_blur8+tlrc'[1]' \
	sub-050    1    nogo  ${derDir}/sub-050/gonogo_stats_blur8+tlrc'[5]' \
	sub-051    2    go    ${derDir}/sub-051/gonogo_stats_blur8+tlrc'[1]' \
	sub-051    2    nogo  ${derDir}/sub-051/gonogo_stats_blur8+tlrc'[5]' \
	sub-052    2    go    ${derDir}/sub-052/gonogo_stats_blur8+tlrc'[1]' \
	sub-052    2    nogo  ${derDir}/sub-052/gonogo_stats_blur8+tlrc'[5]' \
	sub-054    1    go    ${derDir}/sub-054/gonogo_stats_blur8+tlrc'[1]' \
	sub-054    1    nogo  ${derDir}/sub-054/gonogo_stats_blur8+tlrc'[5]'
fi
