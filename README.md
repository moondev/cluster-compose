# ClusterCompose

## Launch a local k8s cluster with only docker. No virtualbox or minikube needed! Works on Linux macOS and Windows

## Wildcard dns support via traefik ingress controller and xip.io

## Much of cluster-compose is based from https://github.com/Mirantis/kubeadm-dind-cluster

### Ensure kubectl in installed and on path. Port 80 must also be open

`sudo ./cluster-compose.sh up`

### Dashboard ingress will be at `dashboard.127.0.0.1.xip.io`