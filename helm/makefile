install-cert-manager:
	helm upgrade --install \
		cert-manager "oci://quay.io/jetstack/charts/cert-manager" \
		--version v1.19.1 \
		--namespace cert-manager \
		--create-namespace \
		--values values-cert-manager.yaml

install-trust-manager:
	helm upgrade --install \
		trust-manager oci://quay.io/jetstack/charts/trust-manager \
		--namespace cert-manager \
		--create-namespace \
		--version v0.20.2 \
		--values values-trust-manager.yaml

install-cert-manager-config:
	helm upgrade --install \
		cert-manager-config charts/cert-manager-config \
		--namespace cert-manager

install-rancher:
	helm upgrade --install \
	  rancher charts/rancher \
		--namespace cattle-system \
		--create-namespace
