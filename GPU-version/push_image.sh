#!/bin/nash 
sudo docker login 
sudo docker tag my_ubuntu/sensing-int-sys huchanwei123/sensing-int-sys
sudo docker push huchanwei123/sensing-int-sys
sudo docker rmi huchanwei123/sensing-int-sys


