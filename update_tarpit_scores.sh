#!/bin/bash
grep -o "time=[[:digit:]]*\.[0-9]*" endlessh2.log > times.txt
sort -k 2n -t'=' times.txt > sorted_times.txt
tail sorted_times.txt
