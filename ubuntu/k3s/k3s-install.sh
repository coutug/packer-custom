#!/bin/bash
set -ex

export DEBIAN_FRONTEND=noninteractive
export INSTALL_K3S_SKIP_START=true

curl -sfL https://get.k3s.io | sh -