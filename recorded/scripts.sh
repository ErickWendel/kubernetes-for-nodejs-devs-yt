docker login 

docker build -t app \
    nodejs-with-postgres-api-example

docker image ls | grep postgres

# cria um apelido para a imagem, com o usuario do dockerhub/repositorio
docker tag app erickwendel/nodejs-with-postgres-api-example 
# sobe para o dockerhub
docker push erickwendel/nodejs-with-postgres-api-example 

# ----
minikube start 
minikube dashboard 

kubectl get nodes 
kubectl describe nodes 

kubectl create -f postgres-sts.json 

kubectl get statefulset 
kubectl get pod 
kubectl logs postgres-0

kubectl describe sts postgres
kubectl describe pod postgres-0

kubectl get svc
kubectl describe service postgres-svc

kubectl get deploy
kubectl describe deploy api-heroes
kubectl get pod 
kubectl describe pod api-heroes-5d96dd4c87-wxvhf
kubectl logs api-heroes-5d96dd4c87-wxvhf
kubectl logs -f api-heroes-5d96dd4c87-wxvhf

kubectl apply -f api-deployment.json

minikube service api-heroes-svc --url 

kubectl delete -f .
kubectl create -f .

minikube delete