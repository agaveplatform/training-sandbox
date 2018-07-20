# Agave Training Environment Sandbox

This is a ssh-enabled single-user sandbox for use in user trainings. It extends the `agaveplatform/ssh-sandbox` base image with packages supporting the `agaveplatform/jupyter-notebook` and `agaveplatform/rstudio` data science images. Features of this image include:

* Source code of funwave-tvd, the sample MPI application used in trainings.  
* build essentials, gfortran, python3, openmpi  
* [Ngrok](https://ngrok.io) reverse tunnel for web accessibility when running locally.  
* [gitchangelog](https://github.com/vaab/gitchangelog) to bootstrap changelogs for legacy projects.  


## Requirements

* Docker >= 1.11
* Docker Compose >= 1.7
 
## Building

``` bash
docker build -t agaveplatform/training-sandbox .
```  

## Running

``` bash
docker run -d --name sandbox -p 10022:22 agaveplatform/training-sandbox:latest
```

## References

To use this image within the context of the Agave Data Science environments, see the [https://github.com/agavetraining]() Github repository for sample Docker stacks with Jupyter and RStudio servers.