docker build --build-arg http_proxy=http://192.168.8.100:8998 --build-arg https_proxy=http://192.168.8.100:8998 -t kfk .
#docker save kfk |gzip -c > /home/sick/temp/docker/kfk.tar.gz
