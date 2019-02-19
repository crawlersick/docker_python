read -p "Enter fjupyter password: "  jpass
echo $jpass > temppass
cp -r ../docker_python0/instantclient_18_3 ./
if [[ ! -d workingdir ]]
then
    mkdir workingdir
fi
docker build -t jupyterlab .
rm temppass
rm -r instantclient_18_3
#docker build --network host --build-arg https_proxy=http://localhost:8998 --build-arg http_proxy=http://localhost:8998 -t jupyterlab .
#docker save jupyterlab |gzip -c > ~/docker_jupyterlab.tar.gz
