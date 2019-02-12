cp -r ../docker_python0/instantclient_18_3 ./
mkdir workingdir
echo abc >> workingdir/testing.txt
docker build -t jupyterlab .
rm -r ./instantclient_18_3
docker save jupyterlab |gzip -c > ~/docker_jupyterlab.tar.gz
