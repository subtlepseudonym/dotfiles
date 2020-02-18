#!/bin/bash

docker images | grep "<none> *<none>" | tr -s " " | cut -f3 -d" " | xargs -I {} docker rmi {}
