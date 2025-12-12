#!/bin/bash

#SBATCH -p bohr-cpu
#SBATCH --chdir=/home/alumno26/lab4
#SBATCH -J pi_alumno26
#SBATCH --cpus-per-task=4
#SBATCH -o lab4-pi_%j.out

#Para este paralelismo con Numba lo que necesitamos son hilos por ello la línea de cpus-per-task

#Cargamos el módulo
module load anaconda/2025.06

ipython pi-solution-alumno26.ipynb $1
echo " "
echo "La cola utilizada es $SLURM_JOB_PARTITION"

module unload anaconda/2025.06
