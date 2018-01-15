#!/bin/nash
sudo docker login
sudo docker tag ubuntu_14.04 huchanwei123/ubuntu_14.04
sudo docker push huchanwei123/ubuntu_14.04
sudo docker rmi huchanwei123/ubuntu_14.04
