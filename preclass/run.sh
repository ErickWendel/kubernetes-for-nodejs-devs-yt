docker login

docker build -t app nodejs-with-postgres-api-example

docker tag app erickwendel/nodejs-with-postgres-api-example

docker push erickwendel/nodejs-with-postgres-api-example

# ------

minikube start 
kubectl get node
kubectl get svc

minikube dashboard

kubectl create -f postgres.json
kubectl describe statefulset postgres-demo
kubectl get sts -w

minikube service postgres-svc 