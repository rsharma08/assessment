## docker image build with latest tage. Replace "rsharma" with your ID
docker build -t rsharma/pythapp:latest -t rsharma/pythapp:$SHA  -f ./pythapp/Dockerfile ./pythapp

## Push docker images to docker hub, Replace "rsharma" with your ID
docker push rsharma/pythapp:latest
docker push rsharma/pythapp:$SHA


kubectl apply -f k8s
kubectl set image deployments/pythapp-deployment server=rsharma/pythapp:$SHA