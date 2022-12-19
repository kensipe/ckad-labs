# Labs for Certified Kubernetes Application Developer (CKAD)

These labs support training necessary for passing the Certified Kubernetes Applcation Developer (CKAD) Test.

## Requirements

* git
* Kubernetes 1.20+ cluster
  * [Kubernetes in Docker (KinD)](https://github.com/kubernetes-sigs/kind) **note:** v0.12.0 used for lab creation
  * [Minikube](https://kubernetes.io/docs/tasks/tools/install-minikube/)
* curl or httpie

## Notes:

Common `alias k=kubectl`

## Labs

### Lab 1: [Kind Setup and Kubernetes Basics](lab1.md)

### Lab 2: [Core Concepts](lab2.md)

### Lab 3: [Configuration (ENV, Configs, Secrets, Tolerations and Affinity)](lab3.md)

### Lab 4: [Pod Design (Labels, Deployments, Jobs and Crons)](lab4.md)

### Lab 5: [Observability](lab5.md)

### Lab 6: [Services and Networking](lab6.md)

### Lab 7: [State Persistence](lab7.md)


** Multi-container does not have a specific lab

## Tips and References

* [Tips](tips.md)
* [Bookmarks](bookmarks.md)

The bookmarks are a handy reference, however the latest changes to the test do not allow for pre-existing bookmarks to be used.

## Updates since Sept 2021 Test Changes

### Helm

- understand Helm fundamentals
- install a release
- understand what a Helm release is
- update a Helm release
- list installed helm releases
- identify installed helm releases with problems
- identify chart values to customize
- install a Helm release specifying values using the --set flag
- uninstall a Helm release

### Docker

- create a simple Dockerfile using: FROM and COPY
- build an image with: docker build -t <name> .
- tag (and maybe push) image
- save image to a .tar file using: docker save

### Canary Deployment

- a service sends traffic to 2 deployments: 1) stable 2) canary.  Out
of the total number of desired pods, make sure the stable deployment
runs X pods, the canary deployment runs Y pods, and the service sends
traffic to both.

### Custom Resource Definitions (CRD)

- discover and use resources that extend Kubernetes
- know how to identify and use them.

## Thanks

Thanks to those that help to keep this project up to date.

- Curtis Hamm @SliderCO-007

<!-- todos -->
<!-- ### Lab 8: [Final Lab](lab8.md)
* add a lab for 7 to have 1 container write to a location and 2 container to read

** update for Sept 2021 test updates
I passed the CKAD test on Friday.  Your virtual workshop was helpful.
Just wanted to pass along some notes about the September 2021 exam
updates.

There are a number of items added to the curriculum, but the only ones
I noticed on the test are: Helm, Docker, and Canary Deployments.

Understand API deprecations
- this is mentioned in the curriculum.  I read about it.  I did not
see it on the test and I'm not sure how you would test it.

Understand authentication, authorization and admission control (CKA)
- did not see it on my test
-->