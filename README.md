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

To remove images and containers:

    docker rm <container_name_or_id>
    docker rmi <image_name_or_id>


To build an image with tests (tests execute during build time):

    docker build -t wwc/test-during-build -f Dockerfile.test_during_build .

**NOTE:** if you run a container from the `wwc/test-during-build` image it
will still serve the static website.
