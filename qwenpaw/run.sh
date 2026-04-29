#!/bin/sh
set -e

mkdir -p /share/qwenpaw/working
mkdir -p /share/qwenpaw/working.secret
mkdir -p /share/qwenpaw/working.backups

export QWENPAW_WORKING_DIR=/share/qwenpaw/working
export QWENPAW_SECRET_DIR=/share/qwenpaw/working.secret
export QWENPAW_BACKUP_DIR=/share/qwenpaw/working.backups

export QWENPAW_PORT="${QWENPAW_PORT:-8088}"
export QWENPAW_RUNNING_IN_CONTAINER=1

if [ ! -f "${QWENPAW_WORKING_DIR}/config.json" ]; then
    echo "First run: initializing QwenPaw..."
    qwenpaw init --defaults --accept-security
fi

exec /entrypoint.sh
