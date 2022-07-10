export IMAGE_NAME="deploy-tutorial"
export TAG="latest"
export PORT=8080

docker build . -t $IMAGE_NAME:$TAG

docker run --rm \
           --name $IMAGE_NAME \
           --user $UID:$UID \
           -p $PORT:$PORT \
           $IMAGE_NAME:$TAG 