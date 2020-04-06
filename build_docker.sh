# build docker
DOCKER_PATH="./Dockerfile"

echo "Trying to build docker image from:" $DOCKER_PATH;

if [ -f "$DOCKER_PATH" ]; then
  echo "file exits"
  sudo docker build -t iainmackie/lucene-trec-car:v2 -f $DOCKER_PATH .

else
  echo "Error - path to file not found:" $DOCKER_PATH;
  exit 0;

fi