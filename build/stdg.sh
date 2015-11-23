#!/bin/bash

# start multiple screens commands or python commands
for i in {0..5}; do
    python bin/dataGenCore.py sample_data/file_$i.log > /dev/null &
done
