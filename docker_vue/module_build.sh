docker run --name tempvue -it -v $PWD/workingdir/vue-admin-template:/app vuejsdev bash -c 'npm install; chmod -R 777 node_modules'
docker rm tempvue

