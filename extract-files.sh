#!/bin/sh

VENDOR=zte
DEVICE=aurora

BASE=../../../vendor/zte/aurora/proprietary
rm -rf $BASE/*

for FILE in `egrep -v '(^#|^$)' 3.txt`; do
DIR=`dirname $FILE`
  if [ ! -d $BASE/$DIR ]; then
mkdir -p $BASE/$DIR
  fi
adb pull /system/$FILE $BASE/$FILE
done

./setup-makefiles.sh
