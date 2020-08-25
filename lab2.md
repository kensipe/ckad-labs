# Lab Kube Basics

## Objective

The focus of this lab is to become familar the different kubernetes objects that affect Pods.  This includes namespaces and deployments.

1. In 1 terminal or tab, watch for pods

`k get pod -w`

2. Create a pod imperatively

`k run nginx --image nginx`

Watch pod cycle thru statuses

3. Without examining the yaml... deploy lab2-1.yaml to cluster:

`k apply -f lab2-1.yaml`

Did it deploy?  What is the status?  Why?

Edit pod and fix

4. Look a entire cluster

`k get all`

**note:** This is a handy command to understand the entire environment for a test question.

5. Delete all pods

`k delete pod --all`

6. Create a ReplicaSet for nginx pod with 3 replicas

image: nginx

7. Delete and Create Deployment for nginx Pod with 3 replicas

image: nginx

8. Update the Deployment Image to `nginx:1.7.9`

9. Create namespace `foo`

10. Change context use `foo` is the default context


## Summary

After lab 1 and 2, you should be comfortable with create and deleting pods, along with creating ReplicaSets and Deployments.