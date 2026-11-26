#!/bin/bash
# Nagios plugin: HTTP status and response time of a URL.
# Usage: check_web_time.sh URL WARNING_SECONDS CRITICAL_SECONDS
url=$1; warn=$2; crit=$3

if [ $# -ne 3 ]; then
  echo "UNKNOWN - usage: $0 URL WARN CRIT"; exit 3
fi

if ! result=$(curl -s -o /dev/null --max-time 10 -w '%{http_code} %{time_total}' "$url"); then
  echo "CRITICAL - cannot reach $url"; exit 2
fi
read -r code seconds <<< "$result"
info="HTTP $code in ${seconds}s | time=${seconds}s;$warn;$crit"

over() { awk -v a="$seconds" -v b="$1" 'BEGIN { exit !(a > b) }'; }

if [ "$code" != "200" ] || over "$crit"; then
  echo "CRITICAL - $info"; exit 2
elif over "$warn"; then
  echo "WARNING - $info"; exit 1
fi
echo "OK - $info"; exit 0
