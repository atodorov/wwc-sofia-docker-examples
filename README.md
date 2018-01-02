Simple Docker examples for a WWC Sofia workshop
-----------------------------------------------

To build the 'Hello World' image:

    docker build -t wwc/hello-world .

To run a container:

    docker run --rm --name hello-world wwc/hello-world

To stop a running container:

    docker stop <container_name_or_id>

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


To build an image with tests (tests execute during container run-time):

    docker build -t wwc/test-during-execution -f Dockerfile.test_during_execution .

    docker network create wwc-network
    docker run --name hello-world --net=wwc-network wwc/hello-world
    docker run --name test-contnr --net=wwc-network wwc/test-during-execution


**NOTE:** if you run a container from the `wwc/test-during-execution` image it
will execute its commands and exit! Because it needs access to the host running
the website both cotnainers (tests and website) need to be on the same network!
