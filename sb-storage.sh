#!/bin/bash
size=$(df -h | awk '{print $2}' | sed -n 5p)
use=$(df -h | awk '{print $3}' | sed -n 5p)
free=$(df -h | awk '{print $4}' | sed -n 5p)
percent=$(df -h | awk '{print $5}' | sed -n 5p)
echo "$use/$size[$percent]"
