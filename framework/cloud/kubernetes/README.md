# Kubernetes (K8S)

# Overview

Kubernetes manages clusters of machine, with containers running on each of them

- Replication set:
- **Control plane**: hosts components used to manage the cluster
  - `kube-apiserver`: frontend
  - `kube-scheduler`: scheduling pods on specific nodes
  - `kube-controller-manager`: control loop that monitors and regulates the
    state of a Kubernetes cluster.
  - `etcd`: a key-value database that contains data about your cluster state and
    configuration; `etcd` is fault tolerant and distributed
  - `cloud-controller-manager`: embeds cloud-specific control logic; lets you
    link your cluster into your cloud provider's API, and separates out the
    components that interact with that cloud platform from components that only
    interact with your cluster
- Data Plane
- **Worker nodes**: virtual or physical machines. A node hosts pods; a cluster
  can scale up to 5000 nodes
  - **Pods**: pods run one or more containers
  - **Container runtime engine**: what runs the containers. Ex, Docker
  - `kubelet`: each node contains one; communicates with the control plane.
    `kubelet` ensures that containers specific in pod configuration are running
    on a specific node, and manages their life cycle. It executes action
    commanded by control plane
  - `kube-proxy`: all compute nodes contains `kube-proxy`; facilitates
    Kubernetes networking services. Handle all network communication inside and
    outside the cluster, forwarding traffic or replying on the packet filtering
    layer of the OS
  - **Container Networking**: enable containers to communicate with hosts and
    other containers. It is often achieved by using container networking
    interface.
- **Persistent storage**: local storage on nodes are deleted when a pod shuts
  down
- **Deployment**: keeps set of pods running
- **Services** expose network traffic to containers

# Resources

- (Book) Kubernetes in Action, Marko Lusak
- (Presentation) Cluster Management at Google With Borg
