# Lab CKAD Persistence

## Objective

The focus of this lab is to become familar with kubernetes persistence volumes and their claims.

1. Create a pod with the following specs:

    * name: nginx
    * container: nginx
    * container volume mount `/log`
    * host volume mount `/var`

2. Create a PV with the following specs:

    * name: log-pv
    * Storage: 100Mi
    * access: ReadWriteMany
    * path: /var


3. Create a Claim for PV with the following specs:

    * name: log-claim
    * access: ReadWriteOnce
    * request: 50Mi

What is the state of the PVC?
What is the state of the PV?

4. Which is true about the claim not being bound?
    a. access modes mismatch
    b. PV and PVC name mismatch
    c. capacity mismatch
    d. reclaim policy not set correctly

5. Create a Pod that uses the claim with the following specs

    * name: webapp-pv
    * image: nginx
    * container mount: /var/www/html


6. What's the reclaim policy on the PV? What happens if the PV is deleted?


