# Lab CKAD Observability

## Objective

The focus of this lab is to become familar with pod readiness and liveliness.

1. Clear all pods

`k delete pod --all`

2. Run the following pod:

`kubectl run box --image=busybox -- /bin/sh -c  'i=0; while true; do echo "$i: $(date)"; i=$((i+1)); sleep 1; done'`

3. Read the logs of this pod

4. IF there were more than 1 container... how would you view logs of this container?

5. Without looking at the file, apply the manifest `lab5-1.yaml`

6. What is the status of the pod?

7. Is it ready?  

8. Fix any issue


