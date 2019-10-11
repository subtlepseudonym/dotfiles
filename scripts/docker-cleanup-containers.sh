#@/bin/bash

docker ps -f status=created -f status=exited -f status=dead | cut -f1 -d" " | grep -v CONTAINER | xargs -I {} docker rm {}
