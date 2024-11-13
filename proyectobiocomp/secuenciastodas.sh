#!/bin/bash

#SBATCH --partition=learning                   # Partition (estudiantes)
#SBATCH --nodes=1
#SBATCH --time=03:00                           # Walltime
#SBATCH --job-name=secutods                 # Job name
#SBATCH --output=%x_%j.out                      # Stdout (%x-jobName, %j-jobId)
#SBATCH --error=%x_%j.err                       # Stderr (%x-jobName, %j-jobId)
#SBATCH --mail-type=ALL                         # Mail notification
#SBATCH --mail-user=sdviveroo@eafit.edu.co       # User Email


##### ENVIRONMENT CREATION #####
source activate filogenia

##### JOB COMMANDS ####
clustalw2 -infile=secuenciastodas.fa -type=protein


