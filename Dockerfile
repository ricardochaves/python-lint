# Container image that runs your code
FROM python:3.8.0-alpine3.10

RUN apk add --no-cache \
    gcc \
    musl-dev && \
    pip install pylint==2.4.4 \
    pylint_django==2.0.13 \
    pycodestyle==2.5.0 \
    flake8==3.7.9 \
    black==19.10b0

# Copies your code file from your action repository to the filesystem path `/` of the container
COPY entrypoint.sh /entrypoint.sh

# Code file to execute when the docker container starts up (`entrypoint.sh`)
ENTRYPOINT ["/entrypoint.sh"]