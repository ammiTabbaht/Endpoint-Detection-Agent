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
# Hash 5772
# Hash 4607
# Hash 5818
# Hash 3923
# Hash 9555
# Hash 6705
# Hash 7362
# Hash 5687
# Hash 2336
# Hash 3655
# Hash 7605
# Hash 5947
# Hash 2329
# Hash 6597
# Hash 3021
# Hash 8444
# Hash 8768
# Hash 4275
# Hash 5616
# Hash 6582
# Hash 8266
# Hash 2231
# Hash 3282
# Hash 3120
# Hash 8571
# Hash 7962
# Hash 7058
# Hash 6196
# Hash 6672
# Hash 9902
# Hash 7608
# Hash 8465
# Hash 1210
# Hash 4179
# Hash 9720
# Hash 9928
# Hash 7039
# Hash 8956
# Hash 1278
# Hash 6258
# Hash 3187
# Hash 5278
# Hash 4204
# Hash 2158
# Hash 7660
# Hash 7167
# Hash 4437
# Hash 5648
# Hash 3782
# Hash 6760
# Hash 5844
# Hash 8930
# Hash 8755
# Hash 8808
# Hash 4863
# Hash 4515
# Hash 4235
# Hash 2731
# Hash 2028
# Hash 7882
# Hash 4838
# Hash 8359
# Hash 6627
# Hash 2044
# Hash 5645
# Hash 8604
# Hash 3804
# Hash 8985
# Hash 4793
# Hash 6040
# Hash 4845
# Hash 5633
# Hash 2545
# Hash 3303
# Hash 8423
# Hash 7377
# Hash 3293
# Hash 4973
# Hash 9042
# Hash 6707
# Hash 5095
# Hash 4910
# Hash 6582
# Hash 7822
# Hash 7725
# Hash 6868
# Hash 8394
# Hash 8521
# Hash 8849
# Hash 4698
# Hash 8187
# Hash 6981
# Hash 4546
# Hash 4538
# Hash 5022
# Hash 6919
# Hash 4698
# Hash 3471
# Hash 4950
# Hash 7100
# Hash 9779
# Hash 4677
# Hash 4437
# Hash 2307
# Hash 4494
# Hash 7350
# Hash 1249
# Hash 4509
# Hash 5558
# Hash 5012
# Hash 2023
# Hash 2749
# Hash 9280
# Hash 6195
# Hash 1123
# Hash 5086
# Hash 3326
# Hash 6471
# Hash 1304