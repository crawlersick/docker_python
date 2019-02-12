docker run -v /home/sick/code/docker_python/docker_jupyterlab/workingdir:/opt -d -p 5002:5002 --restart unless-stopped --name cj jupyterlab
#overwrite the entrypoint like below: (to add base_url for ng rever)
#docker run --entrypoint /usr/local/tomcat/entrypoint.sh tomcat:jre8 -a param1 -b param2 
"jupyter", "lab","--ip=0.0.0.0","--port=5002","--allow-root","--no-browser","--NotebookApp.notebook_dir=/opt"


docker run --entrypoint /bin/bash -v /home/sick/code/docker_python/docker_jupyterlab/workingdir:/opt -it -p 5002:5002 --restart unless-stopped --name cj jupyterlab bash -c "jupyter lab --ip=0.0.0.0 --port=5002 --allow-root --no-browser --NotebookApp.notebook_dir=/opt"
