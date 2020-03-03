#!/bin/bash
echo $(date)
echo -ne "Hosts currently stuck: "
./update_tarpit_count.sh
echo "High Scores, in seconds: "
./update_tarpit_scores.sh
echo -ne "Total time wasted: "
s=$(./tarpit-total-time.sh)
s=$(printf "%.0f" $s)
printf '%d days %02d hours %02d minutes %02d seconds\n' $(($s/86400)) $(($s/3600%24)) $(($s/60%60)) $(($s%60))
echo "Request served. $(date)" >> tarpit-web-access.log
