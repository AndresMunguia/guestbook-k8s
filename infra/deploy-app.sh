#!/bin/bash

aws eks update-kubeconfig --region "eu-west-1" --name "mern-k8s"

cd ../k8s

kubectl apply -f ./back

kubectl apply -f ./front

kubectl apply -f ingress.yaml