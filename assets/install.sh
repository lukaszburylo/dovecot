#!/bin/bash

#judgement
if [[ -a /etc/supervisor/conf.d/supervisord.conf ]]; then
  exit 0
fi

#supervisor
cat > /etc/supervisor/conf.d/supervisord.conf <<EOF
[program:dovecot]
command=/usr/sbin/dovecot -c /etc/dovecot/dovecot.conf -F
autorestart=true
EOF
