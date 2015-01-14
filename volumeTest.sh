#!/bin/bash

force login -u $1 -p $2
force apex $3 > /dev/null 2>&1
echo "Data insert finished"
force apex $4 > /dev/null 2>&1
echo "Data clean up finished"
force import
echo "Finished!"