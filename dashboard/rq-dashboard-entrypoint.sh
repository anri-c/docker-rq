#!/bin/sh

/usr/bin/rq-dashboard -H ${DB_PORT_6379_TCP_ADDR}
#
# if use basic auth
# /usr/bin/rq-dashboard --username <USERNAME> --password <PASSWORD> -H ${DB_PORT_6379_TCP_ADDR}
#
