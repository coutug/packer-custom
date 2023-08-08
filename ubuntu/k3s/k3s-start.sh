#!/bin/bash +x

INSTALL_K3S_EXEC="agent --server https://10.220.118.17:6443 --token token"
# INSTALL_K3S_EXEC="server --token token"

/usr/local/bin/k3s $INSTALL_K3S_EXEC