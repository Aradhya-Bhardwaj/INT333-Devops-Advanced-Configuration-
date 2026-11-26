# Practical 11: Install and configure Ansible

**Status:** Ansible installed in this project; sample files syntax-checked

## Aim

Install Ansible, create an inventory and run ad-hoc commands.

## Procedure

```bash
sudo apt update && sudo apt install -y ansible
ansible --version
ansible -i inventory.ini local -m ping
ansible -i inventory.ini local -m command -a "uptime"
ansible -i inventory.ini local -m setup -a "filter=ansible_distribution*"
```

**Expected result:** `ping` answers `pong` and the other commands print system details.

## Files

- [`inventory.ini`](inventory.ini)
