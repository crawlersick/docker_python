docker stop cj;docker rm  -f cj
docker run -v $PWD/workingdir:/opt -d -p 5002:5002 --restart unless-stopped --name cj jupyterlab
