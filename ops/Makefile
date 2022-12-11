back:
	sudo podman build -f ./backend/Dockerfile --tag easbarbosa/apito:backend-${TAG}

front:
	sudo podman build -f ./frontend/Dockerfile --tag easbarbosa/apito:frontend-${TAG}

release:
	sudo podman push easbarbosa/apito:backend-${TAG}
	sudo podman push easbarbosa/apito:frontend-${TAG}
