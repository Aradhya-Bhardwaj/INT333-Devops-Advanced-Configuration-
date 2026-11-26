# Unit IV: Infrastructure as Code with Terraform

| Topic | Where |
| --- | --- |
| Architecture and workflow (`init`, `plan`, `apply`, `destroy`) | `DEPLOY.md` |
| Writing and managing configuration files | `terraform/main.tf`, `variables.tf`, `outputs.tf` |
| Provisioning on AWS | Two EC2 instances, two security groups, one key pair |
| Resources and dependencies | Instances reference the key pair and security groups; the inventory file depends on the instances |
| State | Local state file, excluded from Git |
| Terraform with Ansible | `local_file.ansible_inventory` writes the Ansible inventory |
| Best practices and security | SSH and Nagios limited to `admin_cidr`; secrets and state ignored by Git |

Not covered: modules, workspaces, remote state, Azure and GCP.

## Related practicals

- [Practical 14: Install and configure Terraform](../../practicals/practical-14-terraform-setup/README.md)
- [Practical 15: Use Terraform with Ansible for end-to-end automation](../../practicals/practical-15-terraform-with-ansible/README.md)

File paths in this page are from the repository root.
