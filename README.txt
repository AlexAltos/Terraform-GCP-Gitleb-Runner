gcloud auth application-default login
gcloud components install gke-gcloud-auth-plugin

terraform init
terraform apply

gcloud container clusters get-credentials primary --zone europe-west3-a --project infra-2-357206


# manual install gitlab-runner
helm template --namespace "default" gitlab-runner -f ./k8s/values.yaml gitlab/gitlab-runner > runner-manifest.yaml
kubectl apply -f .\runner-manifest.yaml