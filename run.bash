#!/bin/bash

SUM=0
BEST=999999999
QTY=10

for (( i = 0; i < QTY; i++ )); do
  START=$(date +%s.%N)
  node ./benchmark.js "$1"
  END=$(date +%s.%N)
  DIFF=$(echo $END-$START | bc)

  SUM=$(echo $SUM+$DIFF | bc)

  if [[ $BEST > $DIFF ]]; then
    BEST=$DIFF
  fi

  # echo $DIFF
done

AVG=$(echo "scale=8; $SUM/$QTY" | bc)
# echo "AVG = $AVG"
# echo "BEST = $BEST"
echo "$BEST $1"
