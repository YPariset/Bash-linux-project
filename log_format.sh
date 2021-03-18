#!/bin/bash

jq -R '[ split("\n")[] | select(length > 0) | split(" ") | {type: .[2], msg: .[3], time: .[0] }]' $1
