# ClusterCompose

Launch a local k8s cluster with only docker. No virtualbox or minikube needed.

Wildcard dns support via traefik ingress controller and xip.io



#### Ensure kubectl is installed and on path. Port 80 must also be open

`sudo ./cluster-compose.sh up`

#### Dashboard ingress will be at `dashboard.127.0.0.1.xip.io`

## Mount an application into pod volume running inside the cluster

### nodejs example

Application is in `apps/nodejs`

Once cluster is up, deploy the application. `kubectl apply -f apps/nodejs/k8s/deployment.yml`

Once pod is up, view at `http://nodejs.127.0.0.1.xip.io`

You can now make changes to `apps/nodejs` and it will link to the pod. Kill the pod to restart the process

Much of cluster-compose is based from https://github.com/Mirantis/kubeadm-dind-cluster