#!/bin/bash
#
#  This script runs at container start
#
function stop() {
  echo `date` "- Stopping ..."
  service ssh stop
}

function start() {
  echo `date` "- Starting container"
  # Get intial status file if first startup

  service ssh start

  sleep infinity
  cronPid=$!

  echo `date` "- Container exiting"
  exit 0
}

trap stop SIGTERM SIGQUIT
start
