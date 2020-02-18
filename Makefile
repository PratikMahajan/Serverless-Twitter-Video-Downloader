.PHONY: deploy


NAMESPACE ?= knbot

check-message:
	@if [ -z "${m}" ]; then echo "Type must be set, use 'make git m=apply or delete'"; exit 1; fi

deploy: check-message deploy-app

# Deploy code to Production:
deploy-app:
	./deploy/deploy.sh -n ${NAMESPACE} -t "${m}"
