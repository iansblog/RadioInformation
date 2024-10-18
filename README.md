# Live Amateur Radio Information
This project hosts a set of  Bootstrap page using Nginx in a Docker container.

## Getting Started

### Prerequisites

- Docker

## Docker commands
### Build and test
docker build -t neonsunset/amateurradioinformation

#### Port 80 (default for the internet)
- docker container run -d -p 80:80 neonsunset/amateurradioinformation:latest 
- To test the port 80 Go to http://localhost

### Build for the Raspbery Pi (pi 5) also. 
- docker buildx build --platform linux/amd64,linux/arm64 -t neonsunset/amateurradioinformation .

### Multi platform build & push to hub 
- docker buildx build --platform linux/amd64,linux/arm64 -t neonsunset/amateurradioinformation . --push

## Local deployment using the docker-compose.yml file
- docker compose up

or runing

- docker stop amateurradioinformation
- docker rm amateurradioinformation
- docker run -d --name amateurradioinformation --restart always -p 80:80 neonsunset/amateurradioinformation:latest

Please change the port as needed. 

## Docker Hub Location
To see the output on docker hub please go to: 
- [Docker Hub](https://hub.docker.com/r/neonsunset/amateurradioinformation)