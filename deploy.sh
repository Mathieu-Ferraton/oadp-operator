#!/bin/bash

oc create namespace oadp-operator
oc project oadp-operator
oc create secret generic my-oadp-secret --namespace oadp-operator --from-file cloud=credentials-velero
oc create -f deploy/non-olm
oc create -f deploy/crds/konveyor.openshift.io_veleros_crd.yaml   
oc create -f deploy/crds/konveyor.openshift.io_v1alpha1_velero_cr.yaml
