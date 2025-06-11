This project consists of creating a cluster to deploy an instance of Camunda using k8s. The steps are valid for windows users. You can use either minukube as cluster or create your own cluster. 
Additionally we will use kind (kubernetes in docker) since we use docker as driver

#### Install Docker desktop
- Docker desktop download link: [https://www.docker.com/products/docker-desktop/]
- Make sure docker is running. Minikube (default k8s cluster) uses docker as the driver

#### Install Minukube
Winget command: *winget install -e --id Kubernetes.minikube*

#### Start Minukube
- Command: *minikube start --driver=docker*

#### Install Kind (Kubernete in docker)
- Command: *winget install kind*
  
#### Install Helm
- Command: *winget install Helm.Helm*

#### Add Camunda 8 to helm repo
- Command: (see shell file cam-repo.sh)
  
#### Install Camunda 8 (Minimal)
- Command: (see shell file cam.sh)


#### Create cluster (in the case, we do not want to use minikube)
- Command: *kind create cluster --config camunda-cluster.yaml*

#### Deploy app 
 Commands:
   *kubectl apply -f camunda-deployment.yaml*
   *kubectl apply -f camunda-service.yaml*

Run app using: http://localhost:30080 <br>
Username: demo <br>
Password: demo <br>

 **Important**: Since we use docker as driver, CPU/Memory config should set at docker level. You can see the current config of camunda cluster with command: *kubectl describe node camunda-cluster-control-plane*

