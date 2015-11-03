#!/bin/bash

for pid in $(ps -ef | grep "dataGenCore.py" | awk '{print $2}'); do 
kill -9 $pid; 
done
