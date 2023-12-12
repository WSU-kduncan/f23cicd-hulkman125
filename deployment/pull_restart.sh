#! /bin/bash
# kill and remove the container
docker kill cobraComix_Website
docker remove cobraComix_Website
# once dead and remove, the image it references can be removed
docker image rm cobraking1/repo4cobra:latest
sudo docker run -d -p 80:80 --name cobraComix_Website cobraking1/repo4cobra:latest
