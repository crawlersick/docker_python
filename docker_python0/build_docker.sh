docker build -t py .
docker save py |gzip -c > ~/Downloads/docker_py.tar.gz
