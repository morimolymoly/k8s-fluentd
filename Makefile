.PHONY: use-minikube
use-minikube:
	kubectl config use-context minikube

.PHONY: deploy
deploy:
	skaffold run -f skaffold/skaffold.yaml

.PHONY: delete
delete:
	skaffold delete -f skaffold/skaffold.yaml

.PHONY: reload
reload: delete deploy
