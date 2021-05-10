# Labs for Certified Kubernetes Application Developer (CKAD)

These labs support training necessary for passing the Certified Kubernetes Applcation Developer (CKAD) Test.

## Requirements

* git
* Kubernetes 1.20+ cluster
  * [Kubernetes in Docker (KinD)](https://github.com/kubernetes-sigs/kind) **note:** v0.10.0 used for lab creation
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

 <!-- todos -->
<!-- ### Lab 8: [Final Lab](lab8.md)
* add a lab for 7 to have 1 container write to a location and 2 container to read
-->