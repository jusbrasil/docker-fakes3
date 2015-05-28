#!/bin/bash

# Entrypoint script for fakes3

if [[ -n $FAKES3_BUCKETS ]]; then
 IFS=','; for bucket in $FAKES3_BUCKETS; do
    mkdir -p /var/data/fakes3/$bucket
 done
fi

exec "$@"
