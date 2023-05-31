ko apply -R -f config/

kubectl get pods -n tekton-pipelines

cd ../../catservice/

clear

kubectl apply -f demo/1-setup/git.yaml

kubectl apply -f demo/1-setup/kaniko.yaml

tkn task list

clear

kubectl apply -f demo/2-gravity/pipeline.yaml

kubectl create -f demo/2-gravity/pipelinerun.yaml

tkn pipelinerun logs -L -f

clear

tkn pipelinerun describe -L

kubectl get pods
