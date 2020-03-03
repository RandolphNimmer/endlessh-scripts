#!/bin/bash
grep -o "[0-9]*\.[0-9]*" sorted_times.txt > stripped-times.txt
awk '{sum= sum+$1} END {print sum}' stripped-times.txt
