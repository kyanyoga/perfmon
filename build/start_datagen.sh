#!/bin/bash

#  n=0; while [[ $n -lt 10 ]]; do echo "Hello$n"; n=$((n+1)); done

# start multiple screens commands or python commands
for i in {0..5}; do
    screen -dmS "data_gen$i" python bin/dataGenCore.py sample_data/file_$i.log
done
