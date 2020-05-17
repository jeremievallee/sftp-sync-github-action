#!/bin/bash -l

echo "Hello, ${1}!"
time=$(date)

ls -lh

echo "::set-output name=anothertest::$time"
