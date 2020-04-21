###Resume running on Flask Framework in python
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

##start up a kubernetes cluster
minikube start

###Deploying app on kubernetes

kubectl apply -f deployment.yaml


###solution to incomplete kubeconfig file


//Start with fresh file rm ~/.kube/config

//Update with the context you want aws eks update-kubeconfig --name eks-cluster --region us-east-1

//Use kubectl to delete the context kubectl config delete-context arn:aws:eks:us-east-1:536510685689:cluster/eks-cluster

//reapply the config aws eks update-kubeconfig --name eks-cluster --region us-east-1
