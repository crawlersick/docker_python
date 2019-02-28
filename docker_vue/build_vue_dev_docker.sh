#docker build --network host --build-arg https_proxy=http://localhost:8998 --build-arg http_proxy=http://localhost:8998 -t vuejsdev .
docker build -t vuejsdev .
docker save vuejsdev |gzip -c > $HOME/Downloads/docker_vue.tar.gz
