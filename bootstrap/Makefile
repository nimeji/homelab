.POSIX:

default: kubeconfig namespace argocd root

kubeconfig:
	export KUBECONFIG=../metal/kubeconfig.yaml

namespace:
	kubectl create namespace argocd --dry-run=client --output=yaml \
		| kubectl apply -f -

.PHONY: argocd
argocd:
	cd argocd && ./apply.sh

.PHONY: root
root:
	cd root && ./apply.sh
