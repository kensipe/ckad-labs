# Lab CKAD Service and Networking

## Objective

The focus of this lab is to become familar with kubernete services and network policies.

1. How many services exist?

2. What are there service type?

3. What is the targetPort configured on `kubernetes` service?

4. How many labels are configured on `kubernetes` service?

5. How many endpoints are configured on `kubernetes` service?

6. Create deployment for lab6-1.yaml `k apply -f lab6-1.yaml`

7. Create a port-forward to a nginx-service:  ` k port-forward service/nginx-service 8080:80`
    Did it succeed?

8. Create a service named nginx-service, Type: NodePort, port: 80, nodePort: 30080, selector on pods for deployment 

9. Recreate port-forward from step 7.  Use browser and go to http://localhost:8080

10. Delete and Recreate service as a ClusterIP.  Get the ClusterIP

11. Start a bash shell on one of the pods.  If the pod is named `webapp-deploy-67bd9888bb-jdkfd` run:  `k exec -it webapp-deploy-67bd9888bb-jdkfd -- /bin/bash` and curl the ClusterIP

## Network Policies
12. How many network policies are there?

13. What pod is the network policy applied on?

14. What type of traffic is it setup to handle?  Ingress? Egress? Both? Neither?

15. What is true?
    a. traffic from internal to payroll pod is blocked
    b. traffic to and from internal pod is blocked
    c. traffic from internal to payroll pod is allowed
    d. traffic to and from payroll pod is blocked

16. What is true?
    a. internal pod can ping payroll pod
    b. external pod can access port 8080 on payroll pod
    c. internal pod acan access port 8080 on payroll pod
    d. external pod can ping payroll pod


17. Create pods for lab6-3.yaml `k apply -f lab6-2.yaml`.  This has an `internal`, `external` and `payroll` pods.  After creating, get pods list with "wide" output and look at IPs for pods.
    hint: `k get pods -o wide` 

18. Assuming a payroll IP of `10.244.0.65`, start a shell in external pod with: ` k exec -it external -- /bin/bash` and curl the payroll IP.

19. Create a Network Policy for payroll which does NOT allow access to payroll, however internal should have access to payroll. (checking this on "kind" will not work... why?)
