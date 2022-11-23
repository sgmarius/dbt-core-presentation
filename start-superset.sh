# too lazy to add this to create a docker image doing this ahahhahahah SYKE.
docker pull apache/superset
docker run -d -p 8088:8088 --name superset apache/superset
docker exec -it superset superset fab create-admin \
              --username admin \
              --firstname Superset \
              --lastname Admin \
              --email admin@superset.com \
              --password admin
docker exec -it superset superset db upgrade
# docker exec -it superset superset load_examples # maybe this is a bad idea.
docker exec -it superset superset init