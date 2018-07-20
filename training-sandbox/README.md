# Agave Training Environment Sandbox

This is a ssh-enabled single-user sandbox for use in user trainings. It extends the `agaveplatform/ssh-sandbox` base image with packages supporting the `agaveplatform/jupyter-notebook` and `agaveplatform/rstudio` data science images. Features of this image include:

* Source code of funwave-tvd, the sample MPI application used in trainings.
* build essentials, gfortran, python3, openmpi
* Ngrok reverse tunnel for web accessibility when running locally
* 

* 
## Requirements

* Docker >= 1.11
* Docker Compose >= 1.7
 
## Building

``` bash
docker build -t agaveplatform/ssh-sandbox .
```  

## Running

``` bash
docker run -d --name sandbox -p 10022:22 agaveplatform/ssh-sandbox
```