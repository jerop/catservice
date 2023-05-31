## 1. Setup

Install Tekton Pipelines with prototype:

```shell
cd ../tektoncd/pipeline
git fetch origin 13ddc9d5fcecd1ab23eedc07ac6d8f8af3782485
git checkout 13ddc9d5fcecd1ab23eedc07ac6d8f8af3782485
ko apply -R -f config/
kubectl get pods -n tekton-pipelines
cd ../../catservice/
```

Install git `Task`:

```shell
kubectl apply -f demo/1-setup/git.yaml
```

Install kaniko `Task`:
```shell
kubectl apply -f demo/1-setup/kaniko.yaml
```

## 2: Data Gravity

View specifications:

- [`Pipeline`](2-gravity/pipeline.yaml)
- [`PipelineRun`](2-gravity/pipelinerun.yaml)
 
Apply `Pipeline`:

```shell
kubectl apply -f demo/2-gravity/pipeline.yaml
```

Create `PipelineRun`:
:
```shell
kubectl create -f demo/2-gravity/pipelinerun.yaml
```

Observe `PipelineRun` execution logs:

```shell
tkn pr logs -L -f
```

Inspect `PipelineRun` status:

```shell
tkn pr describe -L
```

Get `Pods`:

```shell
kubectl get pods
```
## 3: Data Locality

View specifications:

- [`Task`](3-locality/task.yaml)
- [`TaskRun`](3-locality/taskrun.yaml)

Apply `Task`:

```shell
kubectl apply -f demo/3-locality/task.yaml
```

Create `TaskRun`:

```shell
kubectl create -f demo/3-locality/taskrun.yaml
```

Observe `TaskRun` execution logs:

```shell
tkn tr logs -L -f
```

Inspect `TaskRun` status:

```shell
tkn tr describe -L
```
