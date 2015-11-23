#!/bin/bash

y=$1   	# initialize y to $1 args1
z=$2	# initialize z to $2 args2

# configure docker containers
for ((i = $z; i <= $y; i++)); do
    docker exec -d splunk-fwd-$i /bin/bash /opt/perfmon/bin/del
    sleep 2
done
