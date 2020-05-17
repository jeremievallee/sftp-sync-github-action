#!/bin/bash
set -eu

SFTP_COMMANDS_FILE="/tmp/sftp"

printf "%s" "put -r $3/*" > $SFTP_COMMANDS_FILE
sshpass -e sftp -o BatchMode=no -o StrictHostKeyChecking=no -b - $1@$2 < $SFTP_COMMANDS_FILE
