docker run --name temprunvue -it -p 9528:9528 -v $PWD/workingdir/vue-admin-template:/app vuejsdev bash -c 'npm run dev'
docker rm temprunvue
