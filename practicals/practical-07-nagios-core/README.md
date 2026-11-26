# Practical 7: Install and configure Nagios Core

**Status:** Done in this project

## Aim

Install Nagios on Ubuntu and configure host and service monitoring.

## Procedure

The working code is the Ansible role in this repository:

- Tasks: [`ansible/roles/nagios/tasks/main.yml`](../../ansible/roles/nagios/tasks/main.yml)
- Host and services: [`dropwatch.cfg.j2`](../../ansible/roles/nagios/templates/dropwatch.cfg.j2)
- Web login: [`nagios4-cgi.conf.j2`](../../ansible/roles/nagios/templates/nagios4-cgi.conf.j2)

Run it with the steps in [`DEPLOY.md`](../../DEPLOY.md). To check the configuration on the Nagios server:

```bash
sudo nagios4 -v /etc/nagios4/nagios.cfg
```

**Expected result:** zero errors, and the dashboard at `/nagios4` shows the host and services.
