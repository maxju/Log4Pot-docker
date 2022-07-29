ARG BASE=docker.io/fnndsc/python-poetry:latest
FROM $BASE as base

RUN apt-get update && apt-get install -y \
    libcurl4-openssl-dev \
    libssl-dev \
    python3-dev \
    build-essential \
    && rm -rf /var/lib/apt/lists/*

COPY Log4Pot/ /app
WORKDIR /app
RUN poetry install
RUN touch log4pot.conf

ENV ARGUMENTS=""

CMD poetry run python log4pot-server.py $ARGUMENTS @log4pot.conf
