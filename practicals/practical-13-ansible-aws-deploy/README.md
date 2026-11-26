# Practical 13: Deploy applications using Ansible with AWS

**Status:** Done in this project

## Aim

Deploy a web application on an AWS EC2 instance with Ansible.

## Procedure

Ansible deploys DropWatch (nginx, gunicorn and Django) to EC2:

- Playbook: [`ansible/site.yml`](../../ansible/site.yml)
- Tasks: [`ansible/roles/app/tasks/main.yml`](../../ansible/roles/app/tasks/main.yml)
- Steps: [`DEPLOY.md`](../../DEPLOY.md)

The EC2 instance is created by Terraform; Ansible configures it.

**Expected result:** the app opens at `http://APP_IP`.
