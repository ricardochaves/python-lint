# Container image that runs your code
FROM python:3.8.0-alpine3.10

RUN apk add --no-cache bash && \
    pip install pylint

# Copies your code file from your action repository to the filesystem path `/` of the container
COPY entrypoint.sh /entrypoint.sh

# Code file to execute when the docker container starts up (`entrypoint.sh`)
ENTRYPOINT ["/entrypoint.sh"]