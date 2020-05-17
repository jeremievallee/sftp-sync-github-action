#!/bin/bash
set -eu

SFTP_COMMANDS_FILE="/tmp/sftp"

echo "test"
echo $JEJE_TEST
echo "Hello, ${1}!"
time=$(date)
ls -lh /github/workspace

printf "%s" "ls -lh" > $SFTP_COMMANDS_FILE
sshpass -e sftp -b $SFTP_COMMANDS_FILE -o StrictHostKeyChecking=no $1@$2
echo "::set-output name=anothertest::$time"
