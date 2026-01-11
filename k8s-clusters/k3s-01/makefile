helm-install-core:
	helm upgrade -i cert-manager jetstack/cert-manager \
		--namespace cert-manager \
		--create-namespace \
		--version v1.19.1 \
		--values ./helm/values-cert-manager.yaml

	helm upgrade -i trust-manager jetstack/trust-manager \
		--namespace trust-manager \
		--create-namespace \
		--version 0.20.3 \
		--values ./helm/values-trust-manager.yaml

	helm upgrade -i cluster-config ./helm/charts/cluster-config \
		--namespace kube-system \
		--values ./helm/values-cluster-config.yaml
