#!/bin/bash
accepted=$(grep -c "ACCEPT" endlessh2.log)
closed=$(grep -c "CLOSE" endlessh2.log)
total=$(($accepted-$closed))
echo $total
