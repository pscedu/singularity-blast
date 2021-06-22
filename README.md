![forks](https://img.shields.io/github/forks/pscedu/singularity-blats)
![Stars](https://img.shields.io/github/stars/pscedu/singularity-blast)
![License](https://img.shields.io/github/license/pscedu/singularity-blast)

# singularity-blast
Singularity recipe for [blast](https://github.com/sandialabs/Blast).

## Installing the container on Bridges 2
Copy the

* `SIF` file
* and the Perl scripts

to `/opt/packages/blast/0.7.3a`.

Copy the file `modulefile.lua` to `/opt/modulefiles/blast` as `0.7.3a.lua`.

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

---
Copyright © 2020-2021 Pittsburgh Supercomputing Center. All Rights Reserved.

The [Biomedical Applications Group](https://www.psc.edu/biomedical-applications/) at the [Pittsburgh Supercomputing
Center](http://www.psc.edu) in the [Mellon College of Science](https://www.cmu.edu/mcs/) at [Carnegie Mellon University](http://www.cmu.edu).

