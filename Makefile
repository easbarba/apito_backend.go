cluster:
	sudo k3d cluster delete --config ./k8s/k3d.yml
	sudo k3d cluster create --config ./k8s/k3d.yml

import:
	sudo k3d image import -c apito localhost/apito:latest

up:
	sudo kubectl apply -f ./k8s/apito.yml

down:
	sudo kubectl delete -f ./k8s/apito.yml

watch:
	sudo watch kubectl get all

backend:
	sudo podman build --tag easbarba/apito:latest ./backend

frontend:
	sudo podman build --tag easbarba/apito:latest ./frontend

podman:
	sudo systemctl enable --now podman.socket
	sudo ln -fs /run/podman/podman.sock /var/run/docker.sock
	sudo podman network create podman

dev:
	sudo podman push easbarbosa/apito:latest
