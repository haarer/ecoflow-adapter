ARG BUILD_FROM
FROM $BUILD_FROM

# Install requirements for add-on
RUN apk add --no-cache python3 
RUN apk add --update --no-cache py3-pip
RUN apk add --no-cache py3-requests
RUN apk add --no-cache py3-paho-mqtt


# So let's set it to our add-on persistent data directory.
WORKDIR /data

# Copy data for add-on
COPY run.sh /
RUN chmod a+x /run.sh
COPY ef_api_mqtt_adapter.py /
RUN chmod a+x /ef_api_mqtt_adapter.py

CMD [ "/run.sh" ]