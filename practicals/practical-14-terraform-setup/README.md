# Practical 14: Install and configure Terraform

**Status:** Sample configuration validated, not applied

## Aim

Install Terraform and write a basic configuration to provision cloud infrastructure.

## Procedure

Install from https://developer.hashicorp.com/terraform/install and configure AWS with `aws configure`. Then, in this folder:

```bash
terraform init
terraform fmt
terraform validate
terraform plan
terraform apply
terraform destroy    # remove it to stop charges
```

The project's full configuration is in [`terraform/`](../../terraform).

## Files

- [`main.tf`](main.tf)
