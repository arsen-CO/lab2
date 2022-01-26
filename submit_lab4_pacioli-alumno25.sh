#!/bin/bash
#
#SBATCH -p hpc-bio-pacioli
#SBATCH --chdir=/home/alumno25
#SBATCH -J Lab4
#SBATCH -o output.lab4.o%j
#SBATCH --cpus-per-task=4

echo "Lanzando en cola para cortar los ficheros ficheros Sample.fastq"
echo "................................................................."
./cutfiles.sh
echo "Los ficheros han sido cortados con éxito"

