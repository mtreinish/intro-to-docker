FROM alpine:3.7

LABEL Description="Eclipse Mosquitto MQTT Broker"

RUN apk --no-cache add mosquitto=1.4.15-r0
RUN mkdir -p /mosquitto/config /mosquitto/data /mosquitto/log
RUN cp /etc/mosquitto/mosquitto.conf /mosquitto/config

COPY mosquitto.conf /mosquitto/config/mosquitto.conf
COPY mqtt_acl.conf /mosquitto/config/mqtt_acl.conf

RUN chown -R mosquitto:mosquitto /mosquitto

COPY run.sh /root/run.sh

EXPOSE 1883
EXPOSE 80

CMD ["/root/run.sh"]
