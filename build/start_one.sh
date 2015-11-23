#!/bin/bash

# configure one at a time
docker exec splunk-fwd-$1 entrypoint.sh splunk add forward-server 10.10.10.10:9997 -auth admin:changeme > /dev/null &
sleep 5
docker exec splunk-fwd-$1 entrypoint.sh splunk add monitor /opt/perfmon/sample_data -index docker_sandbox > /dev/null &
sleep 5
docker exec   -d splunk-fwd-$1 /bin/bash /opt/perfmon/bin/auto
sleep 5