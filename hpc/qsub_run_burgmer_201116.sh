#!/bin/bash
#------------------------------------------
#$ -S /bin/bash
#$ -V
#$ -j yes
#$ -q all.q
#$ -l h_vmem=4G
#$ -N pts_all
#$ -m e
#$ -M adam.clark@uni-graz.at
#$ -cwd
#$ -l h_rt=4:00:00 
#$ -pe smp 1
#$ -t 1-32

date
module load R

cd /cl_tmp/clarka/ptstability_analyze_burgmer/
./analyze_burgmer_201116.R $SGE_TASK_ID
date