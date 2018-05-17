cat log.txt | grep 368 | grep temp | awk '{split($0, a, "|"); print a[2]}' > bathroom_temperature
cat log.txt | grep 368 | grep humid | awk '{split($0, a, "|"); print a[2]}' > bathroom_humidity
