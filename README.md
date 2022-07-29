# Log4Pot-docker
Docker Image for Thomas Patzkes Log4Pot

## Clone thomaspatzke's Log4Pot into this directory

1. `cd Log4Pot-docker`
2. `git clone https://github.com/thomaspatzke/Log4Pot.git`

## Build Docker Image
1. `docker build .`

## Run Image as Container
- `docker run maxju/log4pot -p 8080:8080 -e ARGUMENTS="--port 8080"`
Note: If you want to use HTTPS you need to mount a certificate to `/certs/cert.pem` inside the container.
- `docker run maxju/log4pot -v /path/to/certificate/file.pem:/certs/cert.pem -p 443:443 -e ARGUMENTS="--port S443"`
Run with configuration file:
- `docker run maxju/log4pot -v /path/to/log4pot.conf:/app/log4pot.conf`


