#!/bin/bash
for ip0 in $(seq 1 255) ; do
  for ip1 in $(seq 1 255); do
    for ip2 in $(seq 1 255); do
      for ip3 in $(seq 1 255); do
        echo "$ip0.$ip1.$ip2.$ip3"
      done;
    done;
  done;
done;
