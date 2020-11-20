#!/bin/sh

argocd app create ${PWD##*/} --repo https://github.com/jopit/${PWD##*/} --path manifests --revision main  --dest-server https://kubernetes.default.svc --dest-namespace default
