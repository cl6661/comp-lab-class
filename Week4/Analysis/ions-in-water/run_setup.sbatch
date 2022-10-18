#!/bin/sh
# JOB HEADERS HERE

#SBATCH --job-name=run-gromace
#SBATCH --nodes=1
#SBATCH --tasks-per-node=48
#SBATCH --mem=8GB
#SBATCH --time=24:00:00
module purge
module load gromacs/openmpi/intel/2020.4
