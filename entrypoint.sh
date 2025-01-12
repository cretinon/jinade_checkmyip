#!/bin/sh

#curl -H 'Authorization: Basic xxxxxxxxxx' "https://nic.ChangeIP.com/nic/update?&hostname=checkmyip.ddns.info&set=1"

while [ 1 ]; do
  date
  curl -A "checkmyip.ddns.info SET" -u $CHECKMYIP_USER:$CHECKMYIP_PASS "https://nic.changeip.com/nic/update?cmd=update&set=1"
  echo
  sleep 3600
done
