#!/bin/bash


# docker build script b: Change for a larger number of forwarders 
for i in {1..3}; do
    docker run --name splunk-fwd-$i -d my_fwd > /dev/null &
done

sleep 30

for i in {1..3}; do
    docker exec splunk-fwd-$i entrypoint.sh splunk add forward-server 172.17.137.10:9997 -auth admin:changeme > /dev/null &
    sleep 5
    docker exec splunk-fwd-$i entrypoint.sh splunk add monitor /opt/perfmon/sample_data -index docker_sandbox > /dev/null &
    sleep 5
    docker exec   -d splunk-fwd-$i /bin/bash /opt/perfmon/bin/auto
    sleep 5
done

