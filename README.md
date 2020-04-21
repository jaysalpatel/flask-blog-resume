###Resume running on Flask Framework in python

###Creating a service and deployment on kubernetes
##It will display static HTML, CSS files


Git steps to push local repo to github page


git init 
git add .
git commit -m "example commit"
git remote add origin https://github.com/jaysalpatel/flask-blog
git push -u origin master

git remote add origin https://github.com/jaysalpatel/flask-blog
git push -u origin master


##if git push hangs use this command


git remote set-url origin https://github.com/jaysalpatel/flask-blog 
git push --force origin master
git config --global core.askpass "git-gui--askpass"
git checkout master

To run after pip install flask

1. pip install flask

2. python flask.blog.py

it will run on localhost:5000

Build docker image in the working directory of the dockerfile

docker build -t flask-blog .

Start single-node kubernetes cluster

minikube start

Apply deployment and service to cluster

kubectl apply -f deployment.yaml

###this file exposes a load balancer exposing port 6000 with the targetport 5000 on the pods targeted by the service

kubectl get services  ##lists all services in the namespace
kubectl get pods -o wide   ##list all pods in the current namespace

kubectl cluster-info  ##displays addresses of the master node and services
