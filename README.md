
## Linode Kubernetes Engine

Linode Kubernetes Engine ([LKE](https://www.linode.com/docs/guides/deploy-and-manage-a-cluster-with-linode-kubernetes-engine-a-tutorial/)) is the managed K8s solution provided by Linode.

This is a managed kubernetes cluster with default 3 nodes & type = "g6-standard-4"

## Cluster Autoscaler

A linode cluster Autoscaller is associated with this LKE 


## Configuration



| Key | Value | Mandatory | Default |
|-----|-------|-----------|---------|
| global/linode-token | Linode API Token with Read/Write permission for Kubernetes and Linodes | yes | none |
| global/lke-cluster-id | ID of the LKE cluster (numeric of the form: 12345, you can get this via `linode-cli` or looking at the first number of a linode in a pool, e.g. for lke15989-19461-5fec9212fad2 the lke-cluster-id is "15989") | yes | none |
| global/defaut-min-size-per-linode-type | minimum size of a node group (must be > 0) | no | 1 |
| global/defaut-max-size-per-linode-type | maximum size of a node group | no | 254 |
| global/do-not-import-pool-id | Pool id (numeric of the form: 12345) that will be excluded from the pools managed by the cluster autoscaler; can be repeated | no | none
| nodegroup \"linode_type\"/min-size" | minimum size for a specific node group | no | global/defaut-min-size-per-linode-type |
| nodegroup \"linode_type\"/max-size" | maximum size for a specific node group | no | global/defaut-min-size-per-linode-type |

