#!/bin/bash

set -xe

# will not work because Apache isn't running during build time
# curl http://localhost/ | grep 'Hello World'

# so we test in a different way
grep 'Hello World' /var/www/html/index.html
