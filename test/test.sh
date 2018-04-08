#!/bin/bash

IMAGE="thekonz/melody-$RANDOM"
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
docker build -t $IMAGE $DIR/..
docker run -v $DIR:/scripts $IMAGE melody run test.php
