kind delete cluster
# from labs folder (where kind-3.yaml lives)
kind create cluster --config=./kind-3.yaml

stty -echo

sleep 2

kubectl taint nodes kind-worker app=blue:NoSchedule >/dev/null
kubectl label nodes kind-worker lab.size=Small

kubectl taint nodes kind-worker2 app=blue:NoSchedule >/dev/null

stty echo
echo "Lab 3 is Ready"