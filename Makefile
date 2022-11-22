back:
	sudo podman build -f ./backend/Dockerfile --tag easbarbosa/apito:${TAG}

front:
	sudo podman build -f ./frontend/Dockerfile --tag easbarbosa/apito:${TAG}

up:
	sudo kubectl apply -f ./kubernetes/deployment/apito.yml
	sudo kubectl apply -f ./kubernetes/service/apito-service.yml

down:
	sudo kubectl delete -f ./kubernetes/deployment/apito.yml
	sudo kubectl delete -f ./kubernetes/service/apito-service.yml

logs:
	sudo kubectl logs deployment/apito-deployment

watch:
	sudo kubectl get all --watch=false

podman:
	sudo systemctl enable --now podman.socket
	sudo ln -fs /run/podman/podman.sock /var/run/docker.sock
	sudo podman network create podman

release:
	sudo podman push easbarbosa/apito:${TAG}

cluster:
	sudo k3d cluster delete --config ./kubernetes/cluster/k3d.yml
	sudo k3d cluster create --config ./kubernetes/cluster/k3d.yml

import:
	sudo k3d image import -c apito localhost/easbarbosa/apito:${TAG}
