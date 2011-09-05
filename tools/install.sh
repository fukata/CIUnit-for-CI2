#!/bin/bash
#########################################
# CIUnit Install Script
#
# Usage:
#   ./tools/install.sh [CodeIgniter Project Path]
#
#########################################

ROOT=$(cd $(dirname $0)/../;pwd)
PJ=${1%/}

# valid option
if [ "$PJ" == "" -o ! -d "$PJ" ]; then
	echo "Invalid CodeIgniter Project Path: $PJ"
	echo "usage: ./tools/install.sh [CodeIgniter Project Path]"
	exit 1
fi

# copy CIUnit files
cp -R $ROOT/application $PJ
cp -R $ROOT/tests $PJ

# apply patches
cd $PJ
patch -p0 < $ROOT/tools/database.patch >> /dev/null
