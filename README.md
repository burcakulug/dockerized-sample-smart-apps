# Dockerized Sample SMART on FHIR Apps (WARNING: NOT FOR PRODUCTION USE)

## Build

`docker build -t dockerized-sample-smart-apps .`

## Run

`docker run -d -p 9000:9000 --restart always burcakulug/dockerized-sample-smart-apps`

## Supported Sample Apps

+ `dockerhost:9000/cardiac-risk-app` &rarr; https://github.com/burcakulug/cardiac-risk-app
+ `dockerhost:9000/growth-chart-app` &rarr; https://github.com/burcakulug/growth-chart-app

