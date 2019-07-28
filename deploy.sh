## docker image build with latest tage. Replace "rsharma" with your ID
docker build -t rsharma/pythapp:latest  -f ./pythapp/Dockerfile ./pythapp

## Push docker images to docker hub, Replace "rsharma" with your ID
docker push rsharma/pythapp:latest


kubectl apply -f k8s