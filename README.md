# ClusterCompose

Launch a local k8s cluster with only docker. No virtualbox or minikube needed.

Wildcard dns support via traefik ingress controller and xip.io



#### Ensure kubectl is installed and on path. Port 80 must also be open

`sudo ./cluster-compose.sh up`

#### Dashboard ingress will be at `dashboard.127.0.0.1.xip.io`

## Mount an application into pod volume running inside the cluster

### nodejs example

Application code is in `apps/nodejs`

When cluster-compose turns up the cluster, the `apps` folder is mounted into the kubernetes worker node at `/apps`

Once cluster is up, deploy the application. `kubectl apply -f apps/nodejs/k8s/deployment.yml`

Inside `apps/nodejs/k8s/deployment.yml` A host volume is setup to mount /apps/nodejs into the pod at `/app`

`/app/nodejs/start.sh` Is the container entrypoint. Provisioning such as npm install can be done here before starting the app.

Once pod is up, view at `http://nodejs.127.0.0.1.xip.io`

You can now make changes to `apps/nodejs` and it will link to the pod. Kill the pod to restart the process
