#!/bin/bash
ping_output=$(ping -c 1 -W 1 1.1.1.1 | grep 'time=')
if [ -z "$ping_output" ]; then
  echo "Fail"
else
  time_ms=$(echo $ping_output | sed -n 's/.*time=\([0-9.]*\) ms.*/\1/p')
  echo "${time_ms} ms"
fi