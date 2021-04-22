#!/bin/bash

mkdir -p /var/mitto/etc/.ssh/
mv /var/mitto/data/$1 /var/mitto/etc/.ssh/
chmod 0400 /var/mitto/etc/.ssh/$1
