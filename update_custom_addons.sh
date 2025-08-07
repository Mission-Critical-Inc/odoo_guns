#!/bin/bash

echo "You must set the GITHUB_TOKEN environment variable to run this script."
if [ -z "$GITHUB_TOKEN" ]; then
  echo "GITHUB_TOKEN is not set. Exiting."
  exit 1
fi
URL=https://jeremyjbutler:${GITHUB_TOKEN}@github.com/Mission-Critical-Inc/enterprise.git
echo "Cloning enterprise custom addons repository from $URL"


git clone --depth 1 $URL ./addons/enterprise





# syncing gunstore custom addons
#echo "Cloning gunstore custom addons repository on $i"
#git clone -c 'core.sshCommand=ssh -i ~/.ssh/id_ed25519 -F /dev/null -o StrictHostKeyChecking=no -o UserKnownHostsFile=/dev/null'  git@github.com:Mission-Critical-Inc/mcifb.git ./custom/mcifb

#Enterprise
#git clone --depth 1 -c 'core.sshCommand=ssh -i ~/.ssh/mci_eaddons -F /dev/null -o StrictHostKeyChecking=no -o UserKnownHostsFile=/dev/null'  git@github.com:Mission-Critical-Inc/enterprise.git --single-branch --branch 'saas-17.4' ./addons/enterprise

# syncing luckysguns custom addons
#echo "Cloning luckysguns custom addons repository on $i"
#git clone -c 'core.sshCommand=ssh -i ~/.ssh/id_ed25519 -F /dev/null -o StrictHostKeyChecking=no -o UserKnownHostsFile=/dev/null'  git@github.com:Mission-Critical-Inc/mcifb.git ./luckysguns.addons/mcifb