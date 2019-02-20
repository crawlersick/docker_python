docker run --name temprunvue -it -p 9527:9527 -v $PWD/../../vue-element-admin/:/app vuejsdev bash -c 'npm run dev'
docker rm temprunvue
