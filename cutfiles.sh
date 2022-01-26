#!/bin/bash
#
#SBATCH -p hpc-bio-ampere
#SBATCH -J Lab4
#SBATCH --cpus-per-task=4

usuario=$(whoami)
login=$(echo $usuario | cut -c 7-)
for i in Sample*; do
	start=0
	split $i -n "$login"
	for j in x*; do
		if test "$start" == 0
		then
			start=1
			mv "$j" $i
		else
			rm "$j"
		fi
	done
done
