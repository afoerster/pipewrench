#!/bin/bash
set -eu
SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
echo "original dir"
pwd
cd $SCRIPT_DIR
echo "script dir"
pwd
ls -lah
./generate-scripts
docker-compose --user hdfs exec kimpala /mount/sqoop-parquet-full-load/run-in-container.sh
