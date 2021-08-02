#!/usr/bin/env bash
while [[ "$PROJECT_DIR" != */MobilePassThrough ]]; do PROJECT_DIR="$(readlink -f "$(dirname "${PROJECT_DIR:-0}")")"; done
source "$PROJECT_DIR/utils/helpers"
loadConfig

sudo virsh destroy --domain "${VM_NAME}"
sudo virsh undefine --domain "${VM_NAME}" --nvram