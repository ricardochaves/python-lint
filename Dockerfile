# Container image that runs your code
FROM python:3.8.0-alpine3.10

RUN pip install pylint \
    pylint_django \
    pycodestyle \
    flake8 \
    black

# Copies your code file from your action repository to the filesystem path `/` of the container
COPY entrypoint.sh /entrypoint.sh

# Code file to execute when the docker container starts up (`entrypoint.sh`)
ENTRYPOINT ["/entrypoint.sh"]