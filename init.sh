images=(kube-proxy-amd64:v1.7.2 kube-discovery-amd64:1.0 kubedns-amd64:1.7 kube-scheduler-amd64:v1.7.2 kube-controller-manager-amd64:v1.7.2 kube-apiserver-amd64:v1.7.2 etcd-amd64:3.0.17 kube-dnsmasq-amd64:1.3 exechealthz-amd64:1.1 pause-amd64:3.0 kubernetes-dashboard-amd64:v1.6.1 k8s-dns-sidecar-amd64:1.14.4 )
for imageName in ${images[@]} ; do
  docker pull caucyming/$imageName
  docker tag caucyming/$imageName gcr.io/google_containers/$imageName
  docker rmi caucyming/$imageName
done

docker pull caucyming/weave-kube:2.3.0
docker tag caucyming/weave-kube:2.3.0 weaveworks/weave-kube:2.3.0
docker rmi caucyming/weave-kube:2.3.0

docker pull caucyming/weave-npc:2.3.0
docker tag caucyming/weave-npc:2.3.0 weaveworks/weave-npc:2.3.0
docker rmi caucyming/weave-npc:2.3.0
