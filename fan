#!/bin/sh
read level
echo level $level | doas tee /proc/acpi/ibm/fan
