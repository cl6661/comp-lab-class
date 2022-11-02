#!/bin/bash
# JOB HEADERS HERE

#SBATCH --job-name=2dWCA-vary-desnity
#SBATCH --nodes=1
#SBATCH --tasks-per-node=48
#SBATCH --mem=8GB
#SBATCH --time=24:00:00

source /scratch/work/courses/CHEM-GA-2671-2022fa/software/lammps-gcc-30Oct2022/setup_lammps.bash

for i in {0.5..1.1..0.1}
do
   mpirun lmp -var density i  -in 2dWCA.in
done