# Practical 8: Create custom Nagios plugins

**Status:** Script tested on its own; not yet added to Nagios

## Aim

Write a Bash plugin that reports a web page's status and response time using Nagios exit codes.

## Procedure

| Exit code | State |
| --- | --- |
| 0 | OK |
| 1 | WARNING |
| 2 | CRITICAL |
| 3 | UNKNOWN |

Test it:

```bash
chmod +x check_web_time.sh
./check_web_time.sh http://APP_IP/login/ 1 3
echo $?
```

Add it to Nagios on the monitor server:

```bash
sudo install -m 755 check_web_time.sh /usr/lib/nagios/plugins/
sudo cp web_time.cfg /etc/nagios4/conf.d/
sudo nagios4 -v /etc/nagios4/nagios.cfg && sudo systemctl restart nagios4
```

## Files

- [`check_web_time.sh`](check_web_time.sh)
- [`web_time.cfg`](web_time.cfg)
