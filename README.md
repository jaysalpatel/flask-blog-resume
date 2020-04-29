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


Other errors failed to push some refs because the remote on git push
###resets the index file or the working tree

git reset --hard


####Updates were rejected because the remote contains work that you do
##hint: not have locally.
##git push: error pushed to refs,
git pull https://github.com/jaysalpatel/flask-blog.git master:dev

### if pushing to other remote urls
git remote -v
git remote rm codecommit-origin


To run after pip install flask

1. pip install flask

2. python flask.blog.py

it will run on localhost:5000

Build docker image in the working directory of the dockerfile

<<<<<<< HEAD
docker build -t flask-resume .

###Tag image to docker hub

docker tag flask-resume:latest flask-blog:latest

docker push jaysalpatel/flask-blog:latest

=======
docker build -t flask-blog .
>>>>>>> fc9388853024e6e4bea54e3b76c71b7347e63c8d

Start single-node kubernetes cluster

minikube start

Apply deployment and service to cluster

kubectl apply -f deployment.yaml

###this file exposes a load balancer exposing port 6000 with the targetport 5000 on the pods targeted by the service

<<<<<<< HEAD
kubectl apply -f service.yaml

=======
>>>>>>> fc9388853024e6e4bea54e3b76c71b7347e63c8d
kubectl get services  ##lists all services in the namespace
kubectl get pods -o wide   ##list all pods in the current namespace

kubectl cluster-info  ##displays addresses of the master node and services
