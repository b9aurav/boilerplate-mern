Steps for terraform module execution:

1. 'minikube start'
2. 'terraform -chdir=terraform init'
3. 'terraform -chdir=terraform plan'
4. 'terraform -chdir=terraform apply'

Note : This terraform module is based on boilerplate-mern_app docker image, make sure you have this docker image on local machine. Verify it by executing following command : 'sudo docker images'. if you do not have it, create it using provided Dockerfile.
