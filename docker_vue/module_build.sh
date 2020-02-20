docker rm tempvue
rm -rf workingdir/
mkdir -p workingdir/vue-admin-template/
sudo chmod -R 777 workingdir
cp package.json workingdir/vue-admin-template/
cp .npmrc workingdir/vue-admin-template/
docker run --name tempvue -it -v $PWD/workingdir/vue-admin-template:/app vuejsdev bash -c 'node -v;ls -tral ; npm install; chmod -R 777 node_modules'
docker rm tempvue
