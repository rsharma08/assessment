## docker image build with latest and git comit reference tag
docker build -t rsharma/pythapp:latest  -f ./pythapp/Dockerfile ./pythapp

## Push docker images to docker hub 
docker push rsharma/pythapp:latest


kubectl apply -f k8s