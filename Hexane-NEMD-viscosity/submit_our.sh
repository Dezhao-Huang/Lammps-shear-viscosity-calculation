#!/bin/csh

#$ -M  dezhao_nd@163.com    # Email address for job notification
#$ -m  abe        # Send mail when job begins, ends and aborts
#$ -pe smp 32      # Specify parallel environment and legal core size
#$ -q  long@@tengfeiluo
#$ -N  hexane_200 # Specify job name
module load lammps    # Required modules

mpiexec -n $NSLOTS lmp_mpi < run.in

