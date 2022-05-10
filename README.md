# Dockerfiles compatible with Snakemake on the [WUSTL RIS cluster](https://ris.wustl.edu/services/compute/)

The most recent generation of cluster computing at the WUSTL Department of Medicine is provided by Research Infrastructure Services (**RIS**).

The nodes themselves provide essentially no software, and all jobs are submitted via [bsub](https://www.ibm.com/docs/en/spectrum-lsf/10.1.0?topic=reference-bsub) and run inside a [Docker](https://www.docker.com/) container.

Contained within this repository are the Dockerfiles I used to build a toolchain using an Ubuntu base image with Python v3.6 and Snakemake v6.15.5. Part of the minimal software available on the login nodes is Python 3.

By installing Snakemake v6.15.5 on your RIS user account, it should be compatible with the Snakemake within these images:

```bash
python3 -m pip install snakemake==6.15.5
```
**Note:** If you don't use Snakemake, these images should still work for you.

```bash
bsub -q general -G <COMPUTE_ALLOCATION> -a 'docker(thatdnaguy/ubuntu:latest)' CMD
```

The images themselves can be found on my [DockerHub](https://hub.docker.com/u/thatdnaguy) account. The Ubuntu image is based on release 18 and includes Python v3.6, Snakemake v6.15.5, and pigz.
