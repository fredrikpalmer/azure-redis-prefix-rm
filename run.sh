#!/bin/bash

echo "connect = ${REDIS_HOST}:${REDIS_PORT}" >> /etc/stunnel/stunnel.conf

stunnel

redis-cli -p ${REDIS_PORT} -a ${REDIS_ACCESS_KEY} --scan --pattern $1 | xargs redis-cli -p ${REDIS_PORT} -a ${REDIS_ACCESS_KEY} del