images=(kube-proxy-amd64:v1.7.2 kube-discovery-amd64:1.0 kubedns-amd64:1.7 kube-scheduler-amd64:v1.7.2 kube-controller-manager-amd64:v1.7.2 kube-apiserver-amd64:v1.7.2 etcd-amd64:3.0.17 kube-dnsmasq-amd64:1.3 exechealthz-amd64:1.1 pause-amd64:3.0 kubernetes-dashboard-amd64:v1.6.1 weave-kube:2.3.0)
for imageName in ${images[@]} ; do
  docker pull caucyming/$imageName
  docker tag caucyming/$imageName gcr.io/google_containers/$imageName
  docker rmi caucyming/$imageName
done
