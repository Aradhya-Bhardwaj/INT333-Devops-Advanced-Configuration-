# Unit VI: Advanced Ansible

| Topic | Where |
| --- | --- |
| Roles | `ansible/roles/app`, `ansible/roles/nagios` |
| Playbooks and `ansible-playbook` | `ansible/site.yml`, `DEPLOY.md` |
| Handlers | `handlers/main.yml` in both roles |
| Variables | `repo_url`, `app_dir`, and secrets passed with `-e` |
| Environment variables | `environment:` on the Django tasks, `dropwatch.env.j2` |
| Facts and built-in variables | Facts are gathered by default; templates use `inventory_hostname` and `groups` |
| Ansible with AWS for application deployment | DropWatch deployed to EC2 |

Not covered: prompts, tags, blocks.

## Related practicals

- [Practical 12: Write and execute Ansible playbooks](../../practicals/practical-12-ansible-playbooks/README.md)
- [Practical 13: Deploy applications using Ansible with AWS](../../practicals/practical-13-ansible-aws-deploy/README.md)
- [Practical 15: Use Terraform with Ansible for end-to-end automation](../../practicals/practical-15-terraform-with-ansible/README.md)

File paths in this page are from the repository root.
