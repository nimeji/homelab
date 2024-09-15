#!/bin/sh

kubectl get ingress gitea --namespace gitea \
    || helm template \
    --include-crds \
    --namespace argocd \
    --values values.yaml \
    argocd . \
    | kubectl apply -n argocd -f -
