#!/bin/bash
 
cat "cloud-config.yaml" <<EOF
#cloud-config

ssh_authorized_keys:
  - ssh-rsa AAAAB3NzaC1yc2EAAAABJQAAAQEAspjqyo59nl5TbcmY3OUT9R/uqKeptIp34YD3nuOuffWzoQ16gTAM9hdYEddNTrUTpcOzgaxuZekGICBc8lRWK6281KegQztVA2RPu33ENhoCGkzs8gWyWC8XXct5uODwcy0EZLKcE9fKMCicswhb/NNRcftTJ2dFBFyF4x5TPikHTO49pQA9slBfE1MV2Iy0opvFCqhFbw5mTA6lwXAr6LWJO6BD8wCRIJ21GNLFjJ6KSKS7cdfX5SrWexptmohsKYtiX9KmfgG1RMcVlHLXXdKrxduMkePlNc3qDx/OW6MFSyWTSwnJzYtpUcYh0hxKtkP3Lks0SmJ9mdkqlarNww== ben@bharr.is
EOF
 
sudo coreos-install -d /dev/vda -c cloud-config.yaml
sudo reboot 
