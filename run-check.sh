#!/bin/sh
name="simple-docker-c"

docker build -q -t $name .
image=$(docker images $name)
version=$(docker run -t -w /src $name gcc --version)

echo "COMPILER: GCC ${version:12:5}"
echo "SIZE: ${image##* }\n"