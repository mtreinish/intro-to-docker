#!/bin/sh

set -x -e

touch /mosquitto/config/mqtt_pass
/usr/bin/mosquitto_passwd -b /mosquitto/config/mqtt_pass publisher ${MQTT_PASS}

mkdir -p /shared/mqtt || /bin/true
chown -R mosquitto:mosquitto /shared/mqtt

exec /usr/sbin/mosquitto -c /etc/mosquitto/mosquitto.conf
