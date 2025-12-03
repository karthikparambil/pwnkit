#!/bin/bash

echo "Enter first hash: "
read value1

echo "Enter second hash: "
read value2

if [ "$value1" = "$value2" ]; then
    echo "intigrity confirmed"
else
    echo "intigrity compromised"
fi                                                                                                                                                                                                                                           
