#!/bin/sh

lines=0
translated=0

while read l; do
  if echo $l | ./Trans; then
    translated=$((translated+1))
  fi
  lines=$((lines+1))
done <"$1"

echo "$lines lines read, $translated lines translated"
