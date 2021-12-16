#!/bin/bash
VMUUID=$(/opt/homebrew/bin/virsh domuuid ubuntu)
VMPID=$(ps -e | grep $VMUUID | grep -v grep | sed -n 's/ *\([0-9]*\).*/\1/p')
taskpolicy -b -p $VMPID
