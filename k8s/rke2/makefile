install-core-charts:
	@echo "Installing core charts..."
	helm dep update ./charts/cert-manager
	helm upgrade -i cert-manager ./charts/cert-manager -n cert-manager --create-namespace
	helm dep update ./charts/trust-manager
	helm upgrade -i trust-manager ./charts/trust-manager -n trust-manager --create-namespace
	helm dep update ./charts/traefik
	helm upgrade -i traefik ./charts/traefik -n traefik --create-namespace

install-core-config:
	@echo "Installing core config..."
	helm upgrade -i cilium-config ./charts/cilium-config -n kube-system
	helm upgrade -i cert-manager-config ./charts/cert-manager-config -n cert-manager

install-ingresses:
	helm upgrade -i external-svc-ingress ./charts/external-svc-ingress -n external-svc-ingress --create-namespace
