#!/bin/bash
node_status=$(kubectl get nodes --no-headers | grep -v "Ready" | wc -l)
if [ "$node_status" -gt 0 ]; then
    echo "CRITICAL: One or more nodes are not ready"
    exit 2
fi
echo "OK: All nodes are ready"
exit 0
