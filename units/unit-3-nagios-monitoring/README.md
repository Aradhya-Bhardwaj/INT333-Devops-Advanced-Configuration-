# Unit III: Nagios Monitoring

| Topic | Where |
| --- | --- |
| Continuous monitoring: definition, importance, benefits | A separate monitor server watches the application |
| Features, architecture, plugins | `check_http` and `check_tcp` in `ansible/roles/nagios/templates/dropwatch.cfg.j2` |
| Installation with a package manager (apt) | `ansible/roles/nagios/tasks/main.yml` |
| Setting up the web server | Apache with digest login, `ansible/roles/nagios/templates/nagios4-cgi.conf.j2` |
| Monitoring web servers | Homepage and login page checks |
| Built-in web interface: hosts and services | Nagios dashboard at `/nagios4` |
| Deploying a simple web application on a server | DropWatch, `ansible/roles/app/` |

Not covered: compiling Nagios from source. Soft and hard states, downtimes and comments are not configured in this code.

## Related practicals

- [Practical 7: Install and configure Nagios Core](../../practicals/practical-07-nagios-core/README.md)
- [Practical 8: Create custom Nagios plugins](../../practicals/practical-08-custom-nagios-plugin/README.md)
- [Practical 9: Monitor a web server with Nagios](../../practicals/practical-09-monitor-web-server/README.md)
- [Practical 10: Use the Nagios web interface](../../practicals/practical-10-nagios-web-interface/README.md)

File paths in this page are from the repository root.
