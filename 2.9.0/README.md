# README

## About
Source code repository can be found [here](ftp://ftp.ncbi.nlm.nih.gov/blast/executables/blast+).

## Building the container for Bridges (or similar)
There is no need to build a container, because an image is already available from Biocontainers, hence all you need to do is run

```
bash ./pull.sh
```

To build the image from a recipe (recommend), run

```
bash ./build.sh
```

To build the image from a recipe remotely, run

to download the image from the repository.

## Installing the container on Bridges (or similar)
Run

```
bash ./generate_binaries.sh
```

to generate all the binaries associated with this package. Do not edit the shell scripts individually.

Copy the

* `SIF` file
* and the shell scripts

to `/opt/packages/blast/2.9.0`.

## Test
To run the available tests, run the command

```
bash ./test.sh
```

---
[![PSC](http://www.andrew.cmu.edu/user/icaoberg/images/logos/psc.png)](http://www.psc.edu)

[icaoberg](http://www.andrew.cmu.edu/~icaoberg) at the [Pittsburgh Supercomputing Center](http://www.psc.edu) in the [Mellon College of Science](https://www.cmu.edu/mcs/) at [Carnegie Mellon University](http://www.cmu.edu).
