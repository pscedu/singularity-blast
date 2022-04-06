![Status](https://github.com/pscedu/singularity-blast/actions/workflows/main.yml/badge.svg)
![Issue](https://img.shields.io/github/issues/pscedu/singularity-blast)
![forks](https://img.shields.io/github/forks/pscedu/singularity-blast)
![Stars](https://img.shields.io/github/stars/pscedu/singularity-blast)
![License](https://img.shields.io/github/license/pscedu/singularity-blast)

# singularity-blast
Singularity recipe for [BLAST](https://blast.ncbi.nlm.nih.gov/Blast.cgi?CMD=Web&PAGE_TYPE=BlastDocs&DOC_TYPE=Download).

## Installing the container on Bridges 2
Copy the

* `SIF` file
* and the other scripts

to `/opt/packages/blast/2.11.0`.

Copy the file `modulefile.lua` to `/opt/modulefiles/blast` as `2.11.0.lua`.

## Building the image using the recipe
### To build the image locally
Run the script `build.sh` to build image locally.

```
bash ./build.sh
```

### To build the image remotely
Run the script `rbuild.sh` to build image remotely.

```
bash ./rbuild.sh
```

## To run tests
To run the available tests, run the command

```
bash ./test.sh
```

---
Copyright © 2020-2022 Pittsburgh Supercomputing Center. All Rights Reserved.

The [Biomedical Applications Group](https://www.psc.edu/biomedical-applications/) at the [Pittsburgh Supercomputing
Center](http://www.psc.edu) in the [Mellon College of Science](https://www.cmu.edu/mcs/) at [Carnegie Mellon University](http://www.cmu.edu).
