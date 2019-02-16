#!/bin/bash
images=(kube-apiserver:v1.3.3 kube-controller-manager:v1.3.3 kube-scheduler:v1.3.3 kube-proxy:v1.3.3
pause:3.1 etcd:3.2.24 coredns:1.2.6)
for image in ${images[@]} ; do
  docker pull kongkaiping/$image
  docker tag kongkaiping/$image k8s.gcr.io/$image
  docker rmi kongkaiping/$image
done
