docker rm -f mysuperset_c
docker run --name mysuperset_c -it -p 10086:10086 -v $PWD/workingdir:/root/.superset/  -v $PWD/superset:/usr/local/lib/python3.6/site-packages/superset/ superset
#docker cp  mysuperset_c:./root/.superset/superset.db ./
#Public    [can explore on Superset, all database access on all_database_access, can explore json on Superset]
