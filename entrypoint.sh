#!/bin/bash -l

echo "Hello, ${1}!"
time=$(date)

ls -lh /github/workspace

echo "::set-output name=anothertest::$time"
