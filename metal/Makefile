.POSIX:

env ?= prod
export KUBECONFIG = $(shell pwd)/kubeconfig.yaml

default: cluster

cluster:
	ansible-playbook \
		--inventory inventories/${env}.yml \
		cluster.yml
