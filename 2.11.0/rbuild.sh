#!/bin/bash

IMAGE=singularity-BLAST-2.11.0.sif
DEFINITION=Singularity

singularity build --remote $IMAGE $DEFINITION
