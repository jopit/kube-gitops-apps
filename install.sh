#!/usr/bin/env bash

current=$PWD

kubectl create namespace argocd
kubectl config set-context --current --namespace=argocd

cd $HOME/go/src/github.com/argoproj/argo-cd
kubectl apply -n argocd --force -f manifests/install.yaml

cd $HOME/go/src/github.com/argoproj/argoproj-labs/applicationset
IMAGE="jspitman/argocd-applicationset:v0.0.1" make deploy

cd $current
