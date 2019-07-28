# Kubernetes cluster for sample python project

This repo is for sample python containerise project provision via K8s on minikube, Repo consist of:

 1. Sample python code for hello-world that uses Flask (HTTP server for app).
 2. Docker file to launch container with base alpine image for python 3.7.
 3. K8s declarative configuration file to run 2 replica of app via deployment object,which are exposed internally to other objects via cluster-ip service on port 5000.
 4. External traffic allowed via Ingress service with configuration available in ingress-service.yaml.
  

## Installation

This project require minikube and kubectl configured.
I am using community led project for ingress-nginx setup available on https://github.com/kubernetes/ingress-nginx
To make use on community led NGINX Ingress controller there are some mandatory configuration require. If you already have minikube and kubectl configured.

Follow instruction:-
1. Below command  will create Namespaces, configmap, serviceaccount, clusterrole and deployment for nginx-ingress-controller. 

    Run:  kubectl apply -f https://raw.githubusercontent.com/kubernetes/ingress-nginx/master/deploy/static/mandatory.yaml 	
    Run: minikube addons enable ingress

2. Once configured code copied. Run command from project root folder.

   Run:  kubectl apply -f k8s


## Configuration discussed:

1.Docker file to launch container with base alpine image for python 3.7:

  Base alpine image of python 3.7 get downloaded from docker hub. 
  Additional requirement to run the project get installed and  default command has been changeed.
  
2.Deployment object to run 2 replica of sample application:

  Post docker build, updated image get pushed into docker hub. Instructions are shared in deploy.sh. 
  Deployment object pythapp-deployment.yaml is configured to run 2 replicas of the image shared on docker hub.
  
3.ClusterIp service to expose pod to internal objects on port 5000, configuration availlable on pythapp-cluster-ip-service.yaml.

4.To allow traffic externally Ingress-nginx service object has been created with configuration available on ingress-service.yaml.
  
