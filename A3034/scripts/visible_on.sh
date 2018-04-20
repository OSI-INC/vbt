#!/bin/bash
# Initializes LED IO pins and sets them all to "Low". Note that setting them 
# to "In" with a pulldown resistor enabled has been unsucessful. Setting them 
# as low outputs by default seems to work well.

# White LED IOs
for value in 2 3 9 14; do
    gpio -g mode $value out
    gpio -g write $value 0
done

gpio -g write 2 1
gpio -g write 3 1