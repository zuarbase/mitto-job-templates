#!/bin/bash

echo "hello world"
number=5
while [ $number -gt 0 ]
do
  echo $number
  number=`expr $number - 1`
done

