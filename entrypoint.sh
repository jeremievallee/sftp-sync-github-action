#!/bin/bash -l
set -eu

echo "test"
echo $JEJE_TEST
echo "Hello, ${1}!"
time=$(date)
ls -lh /github/workspace

echo "::set-output name=anothertest::$time"
