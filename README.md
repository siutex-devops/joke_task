# joke_task
This repository contains:

1. App serving 100jokes starting from the newest from bash.org.pl -> /app
2. Terraform code for eks cluster with Iam roles -> /terraform
3. Kubernetes objects to run the created service inside a kubernetes cluster using Kustomize -> /kubernetes
4. Github workflows: -> .github
    - eks_infra -> to build terraform code on AWS
    - Ap_build -> to build and push docker container for app and build app on EKS cluster
    - Destroy -> to remove infostructer
    - Purge Failed Runs -> to clean Actions section

