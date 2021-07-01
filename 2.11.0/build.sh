#!/bin/bash

IMAGE=singularity-BLAST-2.11.0.sif
DEFINITION=Singularity

sudo singularity build $IMAGE $DEFINITION
