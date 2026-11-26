# Practical 10: Use the Nagios web interface

**Status:** Viewing done in this project; comments and downtimes not tried

## Aim

Manage hosts and services, add comments and view alerts.

## Procedure

1. Open `http://MONITOR_IP/nagios4` and log in.
2. **Tactical Overview:** counts of hosts and services by state.
3. **Hosts** and **Services:** current state of each check.
4. **Problems:** only what is failing.
5. **Reports, Alerts, History:** past state changes.
6. Open a service and try **Add a new comment** and **Schedule downtime**.

Step 6 needs web commands to be permitted. The default Debian setting `use_authentication=0` in `/etc/nagios4/cgi.cfg` can refuse them; set it to `1`, grant `nagiosadmin` the `authorized_for_*` options, and restart Nagios and Apache.
