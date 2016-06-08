---
title: Connect to Kubernetes from outside the Vagrant box
---

# Connect to Kubernetes from outside the Vagrant box
## inside vagrant box
### get  secret name for default service account
```sh
SECRET_NAME=$(kubectl get serviceaccounts default -o template --template="{{ (index .secrets 0).name }}")
```

### get service token
```sh
kubectl  get secret $SECRET_NAME -o template --template="{{.data.token}}" | base64 -d
```
copy result

## outside vagrant box (host machine)
create file `~/.kube/config`:
```yaml
apiVersion: v1
clusters:
- cluster:
    insecure-skip-tls-verify: true
    server: https://<vagrant_box_ip>:6443
  name: k8s
contexts:
- context:
    cluster: k8s
    user: "serviceaccount"
  name: k8s
current-context: k8s
kind: Config
preferences: {}
users:
- name: serviceaccount
  user:
    token: <paste_token_from_previous_step_here>
```

## TODO and imporovements:
- copy out and use k8s CA certificate from Vagrant box instead of `insecure-skip-tls-verify: true`

