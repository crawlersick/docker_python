docker build -t py .
docker save py |gzip -c > ~/docker_py.tar.gz
