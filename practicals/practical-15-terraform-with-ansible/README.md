# Practical 15: Use Terraform with Ansible for end-to-end automation

**Status:** Done in this project

## Aim

Provision infrastructure with Terraform and configure it with Ansible.

## Procedure

1. Terraform creates two EC2 servers: [`terraform/main.tf`](../../terraform/main.tf).
2. Its `local_file` resource writes `ansible/inventory.ini` with the new IPs.
3. Ansible configures the app and Nagios: [`ansible/site.yml`](../../ansible/site.yml).

Full commands: [`DEPLOY.md`](../../DEPLOY.md).

**Expected result:** a running application and a Nagios server monitoring it.
