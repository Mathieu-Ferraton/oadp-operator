#!/bin/bash

oc delete -f deploy/crds/konveyor.openshift.io_v1alpha1_velero_cr.yaml
oc delete -f deploy/crds/konveyor.openshift.io_veleros_crd.yaml   
oc delete -f deploy/non-olm/
oc delete namespace openshift-adp
oc delete crd $(oc get crds | grep velero.io | awk -F ' ' '{print $1}')
