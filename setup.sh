#minikube config set driver virtualbox
#minikube addons enable metallb


kubectl apply -f srcs/nginx.yaml
kubectl apply -f srcs/phpmyadmin.yaml
kubectl apply -f srcs/mysql.yaml
kubectl apply -f srcs/wordpress.yaml
kubectl apply -f srcs/ftps.yaml
kubectl apply -f srcs/influxdb.yaml
