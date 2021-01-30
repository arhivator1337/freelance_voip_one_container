#!/bin/sh
mkdir -p /var/{log,lib,spool}/asterisk /var/spool/asterisk/outgoing && groupadd asterisk && useradd -r -d /var/lib/asterisk -g asterisk asterisk &&  usermod -aG audio,dialout asterisk && chown -R asterisk:asterisk /etc/asterisk /var/{lib,log,spool}/asterisk /usr/lib64/asterisk

touch /var/log/asterisk/full /var/log/asterisk/messages /var/log/asterisk/console /var/log/asterisk/trace /var/log/asterisk/debug /var/log/asterisk/security /var/log/asterisk/queue_log && mkdir -p /var/log/asterisk/{cdr-csv,cdr-custom,cel-custom} && touch /var/log/asterisk/cdr-csv/Master.csv && chown -R asterisk:asterisk /var/log/asterisk/*