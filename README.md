# Guestbook - DevOps Project


This project is slip in two different repositories:

```
App:
https://github.com/AndresMunguia/guestbook-app/

Infrastructure & Kubernetes:
https://github.com/AndresMunguia/guestbook-k8s/
```

## Infrastructure Diagram

![image](https://user-images.githubusercontent.com/67026239/208058158-d682fc0f-61f7-47d2-bdf4-6fcbe40a520c.png)


## Tecnologies

To start developing this project I used a MERN app from a Mongo Atlas workshop, here is the link:

`
https://joellord.github.io/mern-k8s/
`

MERN stands for Mongo-Express.js-React-Node.js, this is a 3-tier app which means it runs on a frontend, backend and a database.

For the infrastructure I used Terraform to build the VPS, main Cluster, 1 Node Group, 1 Security Group, CloudWatch integration, set availability zones and autoscaling. To deploy the pods, replica sets and services I used Kubernetes and EKS.

### Tools Used:

- Terraform
- Terraform Cloud
- Amazon CLI
- KubeCTL
- EKS
- Mongo Atlas
- Route 53
- CloudWatch
- GoDaddy Domain
- Docker
- Git
- VScode
- GitHub Actions

## Pipelines

On the App repository I created a pipeline to build the Docker image for the frontend and backend as well and push these to Dockerhub repository everytime there is a pull from either 'main' or 'develop' branches or a pull on 'main' branch.

```
App:
https://github.com/AndresMunguia/guestbook-app/
```

On my infrastructure repo I created a pipeline to execute terraform everytime there is a pull from either 'main' or 'develop' branches or a pull on 'main' branch.

```
Infrastructure & Kubernetes:
https://github.com/AndresMunguia/guestbook-k8s/
```

