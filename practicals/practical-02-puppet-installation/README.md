# Practical 2: Puppet installation and initial setup

**Status:** Steps only, not yet run

## Aim

Install Puppet on a virtual machine and run a first configuration task.

## Procedure

Run on an Ubuntu 24.04 VM:

```bash
sudo apt update
sudo apt install -y puppet-agent
puppet --version
sudo puppet apply -e 'notify { "Puppet is working": }'
puppet resource user root
facter os
```

**Expected result:** the notify message is printed and `facter` shows the operating system details.
