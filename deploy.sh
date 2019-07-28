## docker image build with latest and git comit reference tag
docker build -t rsharma/pythapp:latest -t rsharma/pythapp:$SHA -f ./pythapp/Dockerfile ./pythapp

## Push docker images to docker hub testing
docker push rsharma/pythapp:latest

docker push rsharma/pythapp:$SHA

