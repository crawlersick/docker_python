docker build -t py .
docker save py |gzip -c > /home/sick/temp/docker/docker_py.tar.gz #~/Downloads/docker_py.tar.gz
