#!/bin/bash

stunnel

redis-cli -p ${REDIS_PORT} -a ${REDIS_ACCESS_KEY} --scan --pattern $1 | xargs redis-cli -p ${REDIS_PORT} -a ${REDIS_ACCESS_KEY} del