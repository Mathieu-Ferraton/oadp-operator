#!/bin/bash

oc create namespace openshift-adp
oc create secret generic my-oadp-secret --namespace openshift-adp --from-file cloud=aws-credentials
oc create -f deploy/non-olm
oc create -f deploy/crds/konveyor.openshift.io_veleros_crd.yaml   
oc create -f deploy/crds/konveyor.openshift.io_v1alpha1_velero_cr.yaml
