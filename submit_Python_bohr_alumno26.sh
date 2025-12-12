#!/bin/bash

#SBATCH -p bohr-gpu
#SBATCH --chdir=/home/alumno26/lab4
#SBATCH -J python_alumno26
#SBATCH --cpus-per-task=1
#SBATCH -o lab4-python_%j.out

#Cargamos el modulo de anaconda
module load anaconda/2025.06

time (ipython reduc-operation-alumno26.ipynb $1)

module unload anaconda/2025.06
