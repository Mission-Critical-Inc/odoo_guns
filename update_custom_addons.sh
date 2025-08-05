    # syncing gunstore custom addons
    echo "Cloning gunstore custom addons repository on $i"
    git clone -c 'core.sshCommand=ssh -i ~/.ssh/id_ed25519 -F /dev/null -o StrictHostKeyChecking=no -o UserKnownHostsFile=/dev/null'  git@github.com:Mission-Critical-Inc/mcifb.git ./custom/mcifb

  #syncing luckysguns custom addons
    echo "Cloning luckysguns custom addons repository on $i"
    git clone -c 'core.sshCommand=ssh -i ~/.ssh/id_ed25519 -F /dev/null -o StrictHostKeyChecking=no -o UserKnownHostsFile=/dev/null'  git@github.com:Mission-Critical-Inc/mcifb.git ./luckysguns.addons/mcifb