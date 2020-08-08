#!/bin/bash
/usr/local/bin/envoy -c /etc/envoy/envoy.yaml -l debug &
echo "Starting sigsci-agent"
sigsci-agent
