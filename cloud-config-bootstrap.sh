#!/bin/bash
 
cat > "cloud-config.yaml" <<EOF
#cloud-config

ssh_authorized_keys:
  - ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIBc4sJBOMfEH9IvVih/d/AJ3IUIGEz+aaMAdyMeHgnKu ben@n900x4c
EOF
 
sudo coreos-install -d /dev/vda -c cloud-config.yaml
sudo reboot 
