#!/bin/bash
# JOB HEADERS HERE

#SBATCH --job-name=kalj
#SBATCH --nodes=1
#SBATCH --tasks-per-node=4
#SBATCH --cpus-per-task=1
#SBATCH --mem=8GB
#SBATCH --time=24:00:00

source /scratch/work/courses/CHEM-GA-2671-2022fa/software/lammps-gcc-30Oct2022/setup_lammps.bash

mpirun lmp -var configfile ../Inputs/n360/kalj_n360_create.lmp -var id 1 -in ../Inputs/create_3d_binary.lmp

for i in 1.5 1.0 0.9 0.8 0.7 0.65 0.6 0.55 0.5 0.475 0.45
do
    a='../Inputs/n360/kalj_n360_T'
    b='.lmp'
    c="${a}${i}${b}"
    mpirun lmp -var configfile $c -var id 1 -in ../Inputs/anneal_3d_binary.lmp

done