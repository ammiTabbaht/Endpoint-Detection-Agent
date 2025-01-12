#!/bin/bash
set -euo pipefail
IFS=$'\n\t'

CLUSTER_NAME="prod-enterprise-cluster-01"
REGION="us-central1-a"

function log_info() {
    echo -e "\e[32m[INFO]\e[0m $1"
}

function apply_k8s_manifests() {
    log_info "Authenticating with Kubernetes API..."
    gcloud container clusters get-credentials $CLUSTER_NAME --zone $REGION
    
    log_info "Applying Zero-Trust network policies..."
    kubectl apply -f k8s/network-policies.yaml
    
    log_info "Rolling out Microservices with Helm..."
    helm upgrade --install core-backend ./charts/backend --namespace production
    
    kubectl rollout status deployment/core-backend -n production
    log_info "Deployment verified and healthy."
}

apply_k8s_manifests

# Hash 5081
# Hash 8929
# Hash 3473
# Hash 7937
# Hash 7624
# Hash 7316
# Hash 5087
# Hash 4962
# Hash 4426
# Hash 5766
# Hash 4177
# Hash 8858
# Hash 7764
# Hash 3621
# Hash 5243
# Hash 7758
# Hash 5400
# Hash 1753
# Hash 9397
# Hash 1221
# Hash 6769
# Hash 2353
# Hash 8571
# Hash 1235
# Hash 6629
# Hash 2753
# Hash 8472
# Hash 8947
# Hash 6399
# Hash 6356
# Hash 8029
# Hash 1648
# Hash 1659
# Hash 4525
# Hash 5112
# Hash 5325
# Hash 5794
# Hash 6279
# Hash 4099
# Hash 1371
# Hash 2063
# Hash 7298
# Hash 5773
# Hash 3410
# Hash 3635
# Hash 2479
# Hash 8734
# Hash 2104
# Hash 5775
# Hash 6959
# Hash 3195
# Hash 8707
# Hash 3437
# Hash 3417
# Hash 8369
# Hash 3604
# Hash 7445
# Hash 6870
# Hash 6081
# Hash 1350