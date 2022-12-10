#!/bin/bash
#shellcheck disable=SC2086
logfile=$(basename -s .sh "$0").log
for i in {1..100}; do
    if [ $((i % 15)) -eq 0 ]; then
        echo "FizzBuzz" | tee -a "$logfile"
    elif [ $((i % 5)) -eq 0 ]; then
        echo "Buzz" | tee -a "$logfile"
    elif [ $((i % 3)) -eq 0 ]; then
        echo "Fizz" | tee -a "$logfile"
    else
        echo $i | tee -a "$logfile"
    fi
done