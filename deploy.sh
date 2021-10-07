#!/bin/bash

make deploy
oc create secret generic cloud-credentials --namespace openshift-adp --from-file cloud=aws-credentials
oc create -n openshift-adp -f config/samples/oadp_v1alpha1_velero.yaml
