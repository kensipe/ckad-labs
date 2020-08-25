kind delete cluster

kind create cluster

stty -echo

max_retry=20
counter=0
until kubectl run nginx1 --image nginx -lapp=front-end &> /dev/null
do
   sleep 1
   [[ counter -eq $max_retry ]] && echo "Failed!" && exit 1
   echo "Still setting up.... #$counter"
   ((counter++))
done

kubectl run nginx2 --image nginx -lapp=front-end >/dev/null
kubectl run nginx3 --image nginx -lapp=front-end >/dev/null
kubectl run nginx4 --image nginx >/dev/null
kubectl run nginx5 --image nginx >/dev/null
kubectl create namespace foo >/dev/null
kubectl run nginx5 --image nginx --namespace foo >/dev/null
kubectl run nginx4 --image nginx -lapp=front-end --namespace foo >/dev/null

stty echo
echo "Lab 4 is Ready"