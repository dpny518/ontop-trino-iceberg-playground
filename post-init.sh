#!/bin/bash

nohup /usr/lib/trino/bin/run-trino &

sleep 60

trino < /tmp/post-init.sql

tail -f /dev/null
