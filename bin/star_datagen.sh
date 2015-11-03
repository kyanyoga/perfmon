!/bin/bash

screen -dmS "somename" somecommand

for i in {0..5}; do
    screen -dmS "name$i" anothercommand $i
done
