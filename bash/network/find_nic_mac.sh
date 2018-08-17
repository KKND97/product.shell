#!/bin/bash
ls /sys/devices/virtual/net > virtual.data
ls /sys/class/net|grep -v 'bonding_masters' > net.data
sort net.data virtual.data | uniq -u > pnic.data
for nic in $(cat pnic.data)
do
  echo "${nic} $(cat /sys/class/net/${nic}/address)"
done
