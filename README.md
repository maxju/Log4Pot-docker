# Log4Pot-docker
Docker Image for Thomas Patzke's <a href="https://github.com/thomaspatzke/Log4Pot">Log4Pot</a>
## Run Image as Container
- `docker run maxju/log4pot -p 8080:8080 -e ARGUMENTS="--port 8080"`
Note: you will need to specify ports using `-p ...` *and* using the `ARGUMENTS` environment variale as shown above.
# Run with HTTPS
If you want to use HTTPS you need to mount a certificate to `/certs/cert.pem` inside the container. The file will need to have both the private key and the fullchain in it.
- `docker run maxju/log4pot -v /path/to/certificate/file.pem:/certs/cert.pem -p 443:443 -e ARGUMENTS="--port S443"`
# Run with Configuration file
For configuration reference please see <a href="https://github.com/thomaspatzke/Log4Pot">Log4Pot</a>.
- `docker run maxju/log4pot -v /path/to/log4pot.conf:/app/log4pot.conf`

## Building this Image
# Clone this repository
1. `git clone https://github.com/maxju/Log4Pot-docker.git`
2. `cd Log4Pot-docker`
# Clone thomaspatzke's Log4Pot into `Log4Pot-docker`
1. `git clone https://github.com/thomaspatzke/Log4Pot.git`

# Build Docker Image
1. `docker build .`


