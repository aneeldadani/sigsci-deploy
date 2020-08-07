# ansible-playbooks
## Warehouse for Ansible Playbooks

This warehouse contains a list of playbooks based on OS, Application, and Signal Sciences playbook applicable to the module required. Each directory contains a specific set of playbooks based on OS and Application. Execute the playbooks in the following order:
            
## Installing software
The `[software]_[os]-deployment-playbook.yml` will provide you with a playbook to install the software applicable to your OS

## Installing SigSci agent/module
The `sigsci.yml` file in the var directory is where the Signal Sciences agent keys are stored. The playbook sigsci-*-deployment-playbook.yml to install the agent/module applicable to the environment. Be sure to fill in the variables:
```
          agent_access_key: [enter SigSci agent access key here] 
          agent_secret_key: [enter SigSci agent secret key here]
```

## Host file
The host file is going to maintain the inventory. The host directory is located under the root of the ansible-playbooks directory.
