#Docker user and docker name can be customized
DOCKERUSER?=dockeruser
DOCKERNAME?=sigsci-envoy
#Should correspond to the version of Envoy that we are pulling in the Dockerfile
DOCKERTAG?=v1.15.0
#The hostname that shows up in the SigSci Dashboard
SIGSCI_HOSTNAME?=envoy
#The port number used to expose the container
EXPOSE_PORT?=4000
#Used when running the container to pass the agent configs under /etc/sigsci/agent.conf within the container
AGENT_CONF?=$(shell pwd)/agent.conf

build:
	docker build -t $(DOCKERUSER)/$(DOCKERNAME):$(DOCKERTAG) .

build-no-cache:
	docker build --no-cache -t $(DOCKERUSER)/$(DOCKERNAME):$(DOCKERTAG) .

run:
	docker run -v $(AGENT_CONF):/etc/sigsci/agent.conf --name $(DOCKERNAME) --hostname $(SIGSCI_HOSTNAME) -p $(EXPOSE_PORT):10000 -d $(DOCKERUSER)/$(DOCKERNAME):$(DOCKERTAG)

deploy:
	docker push $(DOCKERUSER)/$(DOCKERNAME):$(DOCKERTAG)
	
clean:
	-docker kill $(DOCKERNAME)
	-docker rm $(DOCKERNAME)

destroy:
	-docker kill $(DOCKERNAME)
	-docker rm $(DOCKERNAME)
	-docker rmi $(DOCKERUSER)/$(DOCKERNAME):$(DOCKERTAG)