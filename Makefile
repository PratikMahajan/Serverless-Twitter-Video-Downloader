.PHONY: deploy


NAMESPACE ?= test-app

# Deploy code to Production:
deploy:
	./deploy/deploy.sh -n ${NAMESPACE}