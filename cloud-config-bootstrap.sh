#!/bin/bash
 
cat > "cloud-config.yaml" <<EOF
#cloud-config

ssh_authorized_keys:
  - ecdsa-sha2-nistp521 AAAAE2VjZHNhLXNoYTItbmlzdHA1MjEAAAAIbmlzdHA1MjEAAACFBAE8O61Y80vlNHDYOP1IR8HwnO/ossFhO0nrN/JcAWHL1TiwltfAX8CN025/7rlEO/xmdOhm8Gc4aFVdcRAnCIHBTAFalEcFC5Ggtagd8r0oyQwp/2CM7Q8dB5VF9o426jIG8oXaHrqGhP/6LtGOq338+AqoTjXUD3vGAwscRyg8ujDBvA== .ssh/id_ecdsa
EOF
 
sudo coreos-install -d /dev/vda -c cloud-config.yaml
#sudo reboot 
