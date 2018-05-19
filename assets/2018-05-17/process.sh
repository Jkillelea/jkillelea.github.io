#!/bin/sh

chip=368172
log="$1" || "log.txt"

for param in humidity temperature rssi; do
  topic=$chip/$param
  cat $log | grep $topic | awk '{split($0, a, "|"); print a[2]}' > $param
done
