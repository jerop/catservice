kubectl apply -f demo/3-locality/task.yaml

tkn task list

kubectl create -f demo/3-locality/taskrun.yaml

clear

tkn tr logs -L -f

clear

tkn tr describe -L

kubectl get pods
