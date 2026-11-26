# Practical 12: Write and execute Ansible playbooks

**Status:** Sample playbook syntax-checked, not yet run

## Aim

Install a package and configure a service, using variables, a prompt, a block, tags and a handler.

## Procedure

```bash
ansible-playbook -i ../practical-11-ansible-setup/inventory.ini webserver.yml --syntax-check
ansible-playbook -i ../practical-11-ansible-setup/inventory.ini webserver.yml --ask-become-pass
ansible-playbook -i ../practical-11-ansible-setup/inventory.ini webserver.yml --ask-become-pass --tags page
```

The project's own playbook is [`ansible/site.yml`](../../ansible/site.yml).

## Files

- [`webserver.yml`](webserver.yml)
