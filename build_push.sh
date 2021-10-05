#!/bin/bash

operator-sdk build oadp-operator
podman push localhost/oadp-operator quay.io/mferrato/oadp-operator
