# BetVictorApp
BetVictor : Kubernetes Exercise

Simple Java Springboot web application with two endpoint URLS, running on port 9000
````
(URL):9000/
(URL):9000/health
````

Added GIT actions pipeline to build and deploy image to the server, with ECR and EKS pipeline from the
master branch of the code repository.

Added deployment resources to deploy the created app to a K8S Cluster, in EKS using terraform.
located under `Infrastructure/`.

Ensured the application can resist without downtime to host issues, and maintenance operations,
and pods are distributed among the nodes. Along with performance and security features implemented.

