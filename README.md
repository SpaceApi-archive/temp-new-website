# spaceapi.net Website

[![CircleCI][circle-ci-badge]][circle-ci]
[![Docker Image][docker-image-badge]][docker-image]


## Docker Based Setup

First, build the image:

    $ docker build -t spaceapi/website:latest .

Then start a container:

    $ docker run --rm --name spaceapi -d -p 8080:80 spaceapi/website:latest

The website should now run on `localhost:8080`.

If you want, you can also mount the local source code into the container for easier development:

    $ docker run --rm --name spaceapi -d -p 8080:80 -v $(pwd)/src/:/var/www/html/ spaceapi/website:latest

To watch the logs:

    $ docker log -f spaceapi

To stop and remove the container:

    $ docker stop spaceapi


## Docker Image

The Docker image is automatically built and published to
https://hub.docker.com/r/spaceapi/website/ when pushing to `master`.


<!-- Badges -->
[circle-ci]: https://circleci.com/gh/SpaceApi/temp-new-website/tree/master
[circle-ci-badge]: https://circleci.com/gh/SpaceApi/temp-new-website/tree/master.svg?style=shield
[docker-image]: https://hub.docker.com/r/spaceapi/website/
[docker-image-badge]: https://img.shields.io/docker/pulls/spaceapi/website.svg
