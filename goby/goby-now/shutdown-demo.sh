#!/bin/bash
PROCESS=`ps aux | grep -E "goby" |  grep -v "grep" | awk '{print $2}' | sort | uniq`
for process in $PROCESS;
do
  echo "Matando proceso $process"
  kill $process
done
