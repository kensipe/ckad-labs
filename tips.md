# Tips for CKAD Test

### Alias

* `alias k=kubectl`
* `kubectl run nginx --image nginx`

```
alias k=alias
alias kdr="kubectl --dry-run -o=yaml "
alias kget="kubectl -o=yaml get "
alias desc="kubectl describe "
```

### VI Setup
```
cat ~/.vimrc
:set number
:set et
:set sw=2 ts=2 sts=2
```

`Shift + A` - go to the end of the current row (insert mode)

`Shift + C` - delete everything after the cursor (insert mode)

`Shift + I` - go to the first letter on the current row (insert mode)

`Shift + G` - go to the last row of data in the file

`/Pod` - find any instances of `Pod` in the file

`e` - jump to the end of the next word

`w` - jump to the start of the next word

`:25` - go to the 25th row in the file

### Unix 

    while true; do date >> /var/log/app.txt;sleep 5;done

## Kubernetes

### Generators

For pre-1.18
```
k run nginx --image=nginx  (deploy)
k run nginx --image=nginx --restart=Never (pod)
k run nginx --image=nginx --restart=OnFailure (job)
k run nginx --image=nginx --restart=OnFailure -schedule="* * * * * " (cronjob)
```

post-1.18
```
k create deployment nginx --image=nginx  (deploy)
k run nginx --image=nginx --restart=Never (pod)
k create job nginx --image=nginx  (job)
k create cronjob nginx --image=nginx --schedule="* * * * *" --dry-run -o yaml (cronjob)

```

### General

Switch context: 

    k config set-context $(k config current-context) --namespace=dev

Explain
```
k explain job.spec 
k explain cronjob.spec --recursive
```

Looking for a specific value:

    k describe pods | grep --context=10 annotations:
    k describe pods | grep -i -c=10 annotations:
    k describe pods | grep --context=10 Events:

