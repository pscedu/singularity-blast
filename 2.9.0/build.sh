#!/bin/bash

IMAGE=singularity-BLAST-2.9.0.sif
DEFINITION=Singularity

sudo singularity build $IMAGE $DEFINITION
