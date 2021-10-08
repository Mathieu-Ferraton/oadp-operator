#!/bin/bash

oc delete -f config/samples/
oc delete namespace openshift-adp
oc delete crd $(oc get crds | grep velero.io | awk -F ' ' '{print $1}')
