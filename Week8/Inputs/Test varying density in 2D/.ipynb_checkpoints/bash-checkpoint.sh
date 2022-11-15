#!/bin/bash
# JOB HEADERS HERE

#SBATCH --job-name=2dWCA-vary-desnity
#SBATCH --nodes=1
#SBATCH --tasks-per-node=48
#SBATCH --mem=8GB
#SBATCH --time=24:00:00

source /scratch/work/courses/CHEM-GA-2671-2022fa/software/lammps-gcc-30Oct2022/setup_lammps.bash

for i in 0.5 0.6 0.7 0.8 0.9 1.0 1.1
do
    a='LOGFILE_'
    b='.log'
    c="${a}${i}${b}"
   mpirun lmp -var density $i -in 2dWCA.in -log $c
   
done