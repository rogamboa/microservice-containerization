# Microservice Containerization

[![CircleCI](https://circleci.com/gh/rogamboa/microservice-containerization.svg?style=svg&circle-token=174268af9f680ba8f936641f884511337522298b)](https://app.circleci.com/pipelines/github/rogamboa/microservice-containerization)

## Project Summary
This project demonstrates the process of containerizing a machine learning microservice using docker and deploying this microservice via kubernetes.

## Project Folders and Contents
- ```application``` - contains files related to microservice
  - ```Dockerfile```
  - ```Makefile```
  - ```app.py```
  - ```requirements.txt```
  - ```model_data```
- ```scripts```
  - ```make_prediction.sh``` - script to test microservice deployment
  - ```run_docker.sh``` - script to build docker image and run image on docker locally
  - ```run_kubernetes.sh``` - script to deploy docker image on to a kubernetes cluster
  - ```upload_docker.sh``` - script to upload newly created docker image
- ```.circleci```
  - ```config.yml``` - contains circleci ci/cd configuration to run build tests
- ```output_txt_files```
  - ```docker_out.txt``` - example output from running prediction on microservice on local docker
  - ```kubernetes_out.txt```  - example output from running prediction on microservice on kubernetes

## Usage
### Prerequisites
The following steps require the following environment variables to be set. (Alternatively, these variables can be directly substituted within the scripts themselves)
#### Environment Variables
- ```DOCKERPATH``` - path to docker image (ex: repo/name:tag)
- ```USERNAME``` - dockerhub username
- ```PASSWORD``` - dockerhub password
- ```IMAGE_ID``` - image id after building docker image running ```run_docker.sh```

### Steps
1. Change working directory to ```scripts``` folder
2. Run ```./run_docker.sh```
3. Run ```./upload_docker.sh```
4. Optional: Run ```./make_prediction.sh``` to test microservice running locally in docker
5. Run ```./run_kubernetes.sh```
6. Optional: Run ```./make_prediction.sh``` to test microservice running on kubernetes
