cp -r ../docker_python0/instantclient_18_3 ./
docker build -t jupyterlab .
rm -r ./instantclient_18_3
docker save jupyterlab |gzip -c > ~/docker_jupyterlab.tar.gz
