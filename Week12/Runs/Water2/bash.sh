#!/bin/bash
# JOB HEADERS HERE

#SBATCH --job-name=water_aimd_1ps_every0.5fs
#SBATCH --nodes=1
#SBATCH --tasks-per-node=48
#SBATCH --mem=20GB
#SBATCH --time=24:00:00
#SBATCH --reservation=gmh4

module load cp2k/openmpi/intel/20201212
mpirun -np 24 cp2k.popt -i water.inp -o OUTPUT_FILE_NAME.log