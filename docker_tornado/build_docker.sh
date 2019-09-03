#docker build -t tornado_dk .
docker build --build-arg http_proxy=http://192.168.8.100:8998 --build-arg https_proxy=http://192.168.8.100:8998 -t tornado_dk .
#docker save tornado_dk |gzip -c > /home/sick/temp/docker/tornado.tar.gz
