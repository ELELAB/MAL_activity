#!/bin/bash
#PBS -N 1kkr-monomer 
#PBS -A LI05p_RedoXC 
#PBS -l walltime=24:00:00
#PBS -l select=1:ncpus=10:mem=32GB

module load profile/advanced
module load autoload python/2.7.8
module load numpy/1.9.0--gnu--4.8.3
module load biopython/1.65

cd /gpfs/work/LI05p_RedoXC/VERONICA/monomer/ 
python2.7 mutatex0.6.py 1kkr_m_fix_modified82*.pdb -v --clean --mutlist mutation_list.txt --foldx-log --foldx-version suite4 --np 10 
	               
