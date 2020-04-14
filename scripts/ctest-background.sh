#!/bin/bash
#
# $SAI_INSTANCE_IDX - which instance of sai, 0+
# $1 - background fixture name, unique within test space, like "multipostlocalserver"
# $2 - executable
# $3+ - args

J=`basename $2`.$1.$SAI_INSTANCE_IDX
$2 $3 $4 $5 $6 $7 $8 $9 2>/dev/null 1>/dev/null 0</dev/null &
echo $! > /tmp/sai-ctest-$J
sleep 0.7
exit 0

