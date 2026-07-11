#!/bin/bash
for f in $(cat /proc/acpi/wakeup | grep "enabled" |  grep -v "PWRB"  | cut -d ' '  -f 1)
do
        echo $f > /proc/acpi/wakeup
done

