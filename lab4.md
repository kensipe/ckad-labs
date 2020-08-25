# Lab CKAD Pod Design

## Objective

The focus of this lab is to be able to debug and access a cluster by get a pods yaml or by inspecting it's "description" through `describe`.  Additionally, you will rollout a deployment and roll it back.

1. Setup Lab 4 by running `./setup-lab4.sh`. (without looking at sipt yet)

2. Question to answer about cluster:

    How many pods have the label `app=front-end`?
    How many pods in total?
    How many pods in `foo` namespace?
    How many pods with label `app=front-end` in entire cluster?
    Display all of them?

3. Create and run Deployment file which matches the nginx pods with the `app=front-end` label with replicas = 4.

4. Change the image to `nginx:1.9.1` for the deployment

    hint: `k set image deploy nginx nginx=nginx:1.9.1`

5. Looking at deployment rollout history

6. Undo the last rollout

7. Create a Job that will run every 2 mins and print to STDOUT a random number.  What is the value of the 1st random number?

    hint: `shuf -i 0-999 -n1` will print a random number 0 - 999
    hint: `*/2 * * * *` is a cron for every 2 mins