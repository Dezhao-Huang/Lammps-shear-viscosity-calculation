#!/bin/csh

#$ -M  notredamecrc@gmail.com    # Email address for job notification
#$ -m  abe        # Send mail when job begins, ends and aborts
#$ -pe smp 64      # Specify parallel environment and legal core size
#$ -q  long@@tengfeiluo
#$ -N  hex_vis # Specify job name
module load lammps    # Required modules

mpiexec -n $NSLOTS lmp_mpi < run.in

