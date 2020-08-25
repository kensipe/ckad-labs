# Lab CKAD Configuration

## Objective

The focus of this lab is to become familar with quickly starting a pod imperatively.  This lab is also setup to understand how to debug and env either by starting a shell in a pod or by executing a pod with a specific command.

1. Execute an imperative command to see what is in a standard Pods ENV

```
kubectl run busybox --image=busybox --command --restart=Never -- env
```

How do you see the output?

2. Add an ENV to the pod from step 1.  (you'll like to add it to the yaml and replace)

3. Create a config map with the key `APP_ENV` and value of `dev`

4. Create a pod that shows the mapping

5. Create a namespace foo, what is the value of the service account token?

6. Start a shell in a pod (start an nginx pod if one isn't running) and view the mounted token.

`k exec -it nginx /bin/bash`

7. Recreate cluster with multi-nodes and run nginx pod

```
# needs kind and kubectl on path
./setup-lab3.sh
```
wait for "Lab 3 is Ready"

Launch a standard pod:  `k run nginx --image nginx`

What is the status?  Why?

Fix the pod.

8.  What does the following command do?

`kubectl patch nodes kind-worker -p '{"spec":{"taints":[]}}'`

9. Node `kind-worker` has a label that doesn't exist on `kind-worker2`.  Create a pod that has node affinity to this node `kind-worker` passed on this label.