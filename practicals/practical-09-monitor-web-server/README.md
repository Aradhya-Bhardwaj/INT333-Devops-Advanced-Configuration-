# Practical 9: Monitor a web server with Nagios

**Status:** HTTP checks done in this project; log check is sample only

## Aim

Monitor an nginx web server's status, services and logs.

## Procedure

**Status and services (done):** [`dropwatch.cfg.j2`](../../ansible/roles/nagios/templates/dropwatch.cfg.j2) checks the host on port 80, the homepage and the login page.

**Logs (not yet run):** `check_log` reads a local file, so it runs on the web server. Nagios reaches it through NRPE.

```bash
# on the web server
sudo apt install -y nagios-nrpe-server nagios-plugins-standard
sudo cp nrpe_logs.cfg /etc/nagios/nrpe.d/
sudo usermod -aG adm nagios
sudo systemctl restart nagios-nrpe-server
```

Then set `allowed_hosts` in `/etc/nagios/nrpe.cfg` to the Nagios server's private IP, allow TCP 5666 between the two servers, and call `check_nrpe!check_nginx_errors` from a service on the Nagios server (package `nagios-nrpe-plugin`).

## Files

- [`nrpe_logs.cfg`](nrpe_logs.cfg)
