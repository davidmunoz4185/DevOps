[![CircleCI](https://circleci.com/gh/davidmunoz4185/DevOps.svg?style=svg)](https://circleci.com/gh/davidmunoz4185/DevOps)

# Operationalize a Machine Learning Microservice API

## Summary ...

We are given a pre-trained, sklearn model that has been trained to predict housing prices in Boston according to several features, such as average rooms in a home and data about highway access, teacher-to-pupil ratios, and so on. This project tests our ability to operationalize a Python flask app—in a provided file, app.py that serves out predictions (inference) about housing prices through API calls.

## File And Directory Description ...

```
├── app.py
├── Dockerfile
├── Makefile
├── make_prediction.sh
├── model_data
│   ├── boston_housing_prediction.joblib
│   └── housing.csv
├── output_txt_files
│   ├── docker_out.txt
│   └── kubernetes_out.txt
├── README.md
├── requirements.txt
├── run_docker.sh
├── run_kubernetes.sh
└── upload_docker.sh
```

* app.py: Python File which contains all the logic (Flask Application) to make predictions
* Dockerfile: All the code to create our image, in our case `docker built -t app .`
* Makefile: File where are implemented the different steps or scopes to test our app
* make_prediction.sh: Shell-Script File which executes a POST request to our prediction app
* model_data: Directory use for our app to carry out the prediction
* output_txt_files: Directory with the following info:
	* docker_out.txt: Log output from our app in docker container, once a prediction is made
	* kubernetes_out.txt: Log output from our app in kubernetes pod, once a prediction is made
* README.md: Descriptive Project File
* requirements.txt: File which contains python modules to install in our docker image to have running our app
* run_docker.sh: Shell Script file which creates and executes our app in a docker container
* run_kubernetes.sh: Shell Script file which creates and executes our app in a kubernetes pod
* upload_docker.sh: Shell Script file which uploads docker image created in docker hub

## Setup the Environment ...

* Create a virtualenv and activate it
* Run `make install` to install the necessary dependencies

### Running `app.py`

1. Run in Docker:  `./run_docker.sh`
2. Run in Kubernetes:  `./run_kubernetes.sh`

### Checking the `app.py`

1. Run `./make_prediction.sh`

