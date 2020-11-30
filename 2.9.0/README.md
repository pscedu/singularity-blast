# README

## About
Source code repository can be found [here](ftp://ftp.ncbi.nlm.nih.gov/blast/executables/blast+).

## Building the container for Bridges (or similar)
There is no need to build a container, because an image is already available from Biocontainers, hence all you need to do is run

```
bash ./pull.sh
```

to download the image from the repository.

## Installing the container on Bridges (or similar)
Copy the

* `SIF` file
* and the `blastn` and `blastp` script

to `/opt/packages/blast/2.9.0`.
