#!/bin/bash

if [ ! $(command -v singularity) ]; then
	module load singularity
fi

singularity pull https://depot.galaxyproject.org/singularity/blast%3A2.9.0--pl526he19e7b1_5
mv -v blast%3A2.9.0--pl526he19e7b1_5 singularity-BLAST-2.9.0.sif
