#!/bin/sh

BASE=../../../vendor/zte/aurora/proprietary
rm -rf $BASE/*

for FILE in `egrep -v '(^#|^$)' proprietary-files.txt`; do
  DIR=`dirname $FILE`
  if [ ! -d $BASE/$DIR ]; then
    mkdir -p $BASE/$DIR
  fi
  cp ../../../device/zte/aurora/tmp/system/$FILE $BASE/$FILE
done

./setup-makefiles.sh
