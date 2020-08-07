# ansible_playbooks
## Warehouse for Ansible Playbooks

This warehouse contains a list of playbooks based on OS, Application, and Signal Sciences playbook applicable to the module required. Each directory contains a specific set of playbooks based on OS and Application. Execute the playbooks in the following order:

## Launching EC2 instance
To launch an EC2 instance the following variables will need to be filled out in the `ec2_[os].yml` file. **(This is only applicable to AWS EC2 instances.)**
 ```
            security_group: [Insert your security groups here]
            access_key: [enter your AWS access key here]
            secret_key: [enter your AWS secret key here]
```
            
## Installing software
The `[software]_[os].yml` will provide you with a playbook to install the software applicable to your OS

## Installing SigSci agent/module
The `sigsci_[software].yml` file is a playbook to install the agent/module applicable to the environment. Be sure to fill in the variables:
```
          agent_access_key: [enter SigSci agent access key here] 
          agent_secret_key: [enter SigSci agent secret key here]
```

## Host file
The host file is going to maintain the inventory. Each directory has a local host file, which will populate as you run the `ec2_[os].yml` playbook. The public IP will be pulled from AWS. The software and SigSci playbooks are dependent on whether the host file is populated with the appropriate instance IP's.
