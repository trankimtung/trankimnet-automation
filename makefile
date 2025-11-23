dns-01-setup:
	ansible-playbook -i servers/dns-01/ansible/hosts.ini servers/dns-01/ansible/playbook-setup.yaml

dns-01-deploy:
	ansible-playbook -i servers/dns-01/ansible/hosts.ini servers/dns-01/ansible/playbook-deploy-compose.yaml
	ansible-playbook -i servers/dns-01/ansible/hosts.ini servers/dns-01/ansible/playbook-deploy-scripts.yaml

dns-02-setup:
	ansible-playbook -i servers/dns-02/ansible/hosts.ini servers/dns-02/ansible/playbook-setup.yaml

dns-02-deploy:
	ansible-playbook -i servers/dns-02/ansible/hosts.ini servers/dns-02/ansible/playbook-deploy-compose.yaml

automation-update:
	ansible-playbook -i ansible/hosts.ini ansible/playbook-update.yaml
