spaceapi.net Website
====================

Docker Based Setup
------------------

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
