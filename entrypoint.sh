#!/bin/bash -l
set -eu

echo "test"
echo $JEJE_TEST
echo "Hello, ${1}!"
time=$(date)
ls -lh /github/workspace

SFTP_COMMANDS_FILE = '../sftp'
printf "%s" "ls -lh" > $SFTP_COMMANDS_FILE
sshpass -e sftp -b $SFTP_COMMANDS_FILE -o StrictHostKeyChecking=no $1@$2

echo "::set-output name=anothertest::$time"
