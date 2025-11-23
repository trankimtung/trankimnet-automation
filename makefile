dns-01-setup:
	ansible-playbook -i servers/dns-01/ansible/hosts.ini servers/dns-01/ansible/playbook-setup.yaml

dns-01-deploy-compose:
	ansible-playbook -i servers/dns-01/ansible/hosts.ini servers/dns-01/ansible/playbook-deploy-compose.yaml

dns-01-deploy-scripts:
	ansible-playbook -i servers/dns-01/ansible/hosts.ini servers/dns-01/ansible/playbook-deploy-scripts.yaml

dns-02-setup:
	ansible-playbook -i servers/dns-02/ansible/hosts.ini servers/dns-02/ansible/playbook-setup.yaml

dns-02-deploy-compose:
	ansible-playbook -i servers/dns-02/ansible/hosts.ini servers/dns-02/ansible/playbook-deploy-compose.yaml
