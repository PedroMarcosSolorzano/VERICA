#!/bin/bash

for f in *.dot; do

  if [ ! -f "$f" ]; then
    break
  fi

  dot -Tpng $f >> $f.png

done

exit 0
