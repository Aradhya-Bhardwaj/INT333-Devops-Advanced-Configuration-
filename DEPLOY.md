# Deploying DropWatch (Terraform + Ansible + Nagios)

The application code lives in https://github.com/Aradhya-Bhardwaj/DropWatch (Ansible clones it during deployment).

Terraform creates two AWS EC2 servers and writes an Ansible inventory.
Ansible installs the app (nginx + gunicorn) on one and Nagios on the other.
Nagios checks that the DropWatch homepage and login page respond.

## Prerequisites
Terraform, Ansible (Linux/macOS/WSL; Ansible does not run natively on Windows), AWS credentials
(`aws configure`), and an SSH key (`ssh-keygen -t ed25519`).

## Steps
```bash
cd terraform
cp terraform.tfvars.example terraform.tfvars   # set admin_cidr to your IP, e.g. 1.2.3.4/32
terraform init && terraform apply

cd ../ansible
ansible-playbook site.yml \
  -e "django_secret_key=$(openssl rand -hex 32)" \
  -e "nagios_password=CHOOSE_A_PASSWORD"
```
`terraform output` shows the app URL and the Nagios URL (`/nagios4`, user `nagiosadmin`).
Remove everything with `terraform destroy` to stop AWS charges.

## Notes
- Demo accounts and data are seeded on first deploy; change those passwords for anything public.
- The app uses SQLite on the server. For real use, switch to Postgres (the settings already support it).
- HTTP only; add HTTPS (Let's Encrypt) and a domain for production.
