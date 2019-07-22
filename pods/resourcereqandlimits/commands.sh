#!/bin/bash

# Create namespace memory-demo
kubectl create -f mem-examplesns.yaml

# Create Pod in the same namespace having memory limits
# The args section in the configuration file provides arguments for the Container when it starts. The "--vm-bytes", "150M" arguments tell the Container to attempt to allocate 150 MiB of memory.

kubectl create -f memreqandlimit.yaml -n mem-example

# Check the Pod details with the following command
# you should see the resource limits as per Pod definition
kubectl get pod memory-demo -o yaml -n mem-example


