docker build --tag gcpdemo:v1 .
docker run -p 9080:9080 --name gcpdemo gcpdemo:v1

docker tag gcpdemo:v1 gcr.io/deer-prototype-280907/gcpdemo:v1
docker push gcr.io/deer-prototype-280907/gcpdemo:v1

gcloud container clusters get-credentials k-cluster --zone asia-east1-a
kubectl apply -f deployment.yml
kubectl apply -f service.yml
kubectl patch svc gcpdemo -p '{"spec":{"externalIPs":["192.168.0.194"]}}'













































-------------------------------------------------------
https://matthewpalmer.net/kubernetes-app-developer/articles/kubernetes-ingress-guide-nginx-example.html
https://cloud.google.com/community/tutorials/nginx-ingress-gke
https://medium.com/bluekiri/deploy-a-nginx-ingress-and-a-certitificate-manager-controller-on-gke-using-helm-3-8e2802b979ec
