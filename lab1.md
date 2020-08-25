# Lab Kind, VI and YAML

## Objective

The focus of this lab is to become familar with kubernetes through the use of the kind kubernetes environemnt.  

1. Start cluster

`kind create cluster`

```bash
kind create cluster
Creating cluster "kind" ...
 ✓ Ensuring node image (kindest/node:v1.17.0) 🖼
 ✓ Preparing nodes 📦  
 ✓ Writing configuration 📜 
⠊⠁ Starting control-plane 🕹️ on
 ✓ Starting control-plane 🕹️ 
 ✓ Installing CNI 🔌 
 ✓ Installing StorageClass 💾 
Set kubectl context to "kind-kind"
You can now use your cluster with:

kubectl cluster-info --context kind-kind

Have a nice day! 👋
```

2. Setup the alias `alias k=kubectl`

3. Get the kube version with `kubectl`

```
k version
Client Version: version.Info{Major:"1", Minor:"18", GitVersion:"v1.18.6", GitCommit:"dff82dc0de47299ab66c83c626e08b245ab19037", GitTreeState:"clean", BuildDate:"2020-07-16T00:04:31Z", GoVersion:"go1.14.4", Compiler:"gc", Platform:"darwin/amd64"}
Server Version: version.Info{Major:"1", Minor:"17", GitVersion:"v1.17.0", GitCommit:"70132b0f130acc0bed193d9ba59dd186f0e634cf", GitTreeState:"clean", BuildDate:"2020-01-14T00:09:19Z", GoVersion:"go1.13.4", Compiler:"gc", Platform:"linux/amd64"}
```

4. api-resouces

Lets get a list of resources from `kubectl`
`k api-resources`

Which resources are namespaced? and which are cluster scoped?

For cluster scoped: `k api-resources --namespaced=false`

What is the shortname for `PodSecurityPolicy`?

5. Explaining Resources

Explain is a great way to understand the defined structure of a resource or kind.  This is accomplish through `k explain <kind>`

`k explain ns`

Almost all resources at this high level report roughly the same apiVersion, kind, metadata, spec, status information.  In order to get the full structure of this kind use the `--recursive` flag.

`k explain ns --recursive`

Notice the status field `phase`.  Let's display that as an output.

`k get ns -o custom-columns=NAME:.metadata.name,PHASE:.status.phase`

Example output:
```
NAME                 PHASE
default              Active
kube-node-lease      Active
kube-public          Active
kube-system          Active
local-path-storage   Active
```

Explain is incredibly useful in understanding the structure of types deployed in kubernetes.

6. Increase verbosity

Get the namespaces again using the `-v #` such as `-v 6`

```
 k get ns -v 6
I0821 08:59:23.530922    5867 loader.go:375] Config loaded from file:  /Users/kensipe/.kube/config
I0821 08:59:23.546835    5867 round_trippers.go:443] GET https://127.0.0.1:32769/api/v1/namespaces?limit=500 200 OK in 11 milliseconds
```

increase to max value of `9`

7. Setup  VI

Install if missing... 

` vi ~/.vimrc`

```
:set number
:set et
:set sw=2 ts=2 sts=2
```

8. VI Working with YAML

```
k create deployment nginx --image=nginx --dry-run -o yaml > pod.yaml

vi pod.yaml
```

## Summary

At the conclusion of this lab, you should be familar with starting and delete a kind cluster along with interact with the cluster via `kubectl`.  Additionally, you should be comfortable with working with VI, setting up tab stops and work with `kubectl` to create YAML manifests.
