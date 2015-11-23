#!/bin/bash

for i in {0..10}; do
    echo $i
    # docker run --name splunk-fwd-$i -d my_fwd > /dev/null &
done

#for i in {1..5}; do
# for i in {0..10}; do
    # build the containers
	#docker run --name splunk-fwd-$i -d my_fwd 
	# docker exec splunk-fwd-$i entrypoint.sh splunk add forward-server 172.17.137.10:9997 -auth admin:changeme
	# docker exec splunk-fwd-$i entrypoint.sh splunk add monitor /opt/perfmon/sample_data -index docker_sandbox
	# docker exec	-d splunk-fwd-$i /bin/bash /opt/perfmon/bin/auto
    # final piece is auto start script
#done
