sudo chmod -R 777 workingdir
rm -rf workingdir/vue-admin-template/*
cp package.json workingdir/vue-admin-template/
docker run --name tempvue -it -v $PWD/workingdir/vue-admin-template:/app vuejsdev bash -c 'npm install; chmod -R 777 node_modules'
docker rm tempvue

