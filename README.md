Simple Docker examples for a WWC Sofia workshop
-----------------------------------------------

To build an image:

    docker build -t wwc/hello .

To run a container:

    docker run --rm --name hello-docker wwc/hello

To see what images and containers exist:

    docker images
    docker ps

**NOTE:** add `-a` to see all images and containers.

