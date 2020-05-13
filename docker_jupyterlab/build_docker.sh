read -p "Enter fjupyter password: "  jpass
echo $jpass > temppass
openssl req -newkey rsa:2048 -nodes -keyout key.pem -x509 -days 365 -out cert.pem
cp -r ../docker_python0/instantclient_18_3 ./
if [[ ! -d workingdir ]]
then
    mkdir workingdir
fi
#docker build -t jupyterlab .
docker build --network host --build-arg https_proxy=http://localhost:8998 --build-arg http_proxy=http://localhost:8998 -t jupyterlab .
rm temppass
rm -rf instantclient_18_3
rm key.pem
rm cert.pem
#docker save jupyterlab |gzip -c > ~/docker_jupyterlab.tar.gz
