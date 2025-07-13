
# Purpose
Addon for Homeassistant to add sensor sources for Ecoflow products, using the developer api.

The addon subscribes to the Ecoflow MQTT server and publishes the updates to an other MQTT server (preferrably in your home network).

In Homeassistant, you can set up sensor sources in the configuration.yaml like this: 

```
mqtt:
  sensor:
    - name: "ECOFLOW SOC"
      state_topic: "ecoflow/f32ShowSoc"
      device_class: battery
    - name: "ECOFLOW Offgrid2 Pwr"
      state_topic: "ecoflow/offgrid2ActivePower"
      device_class: power  
      unit_of_measurement: "W"
    - name: "ECOFLOW Offgrid1 Pwr"
      state_topic: "ecoflow/offgrid1ActivePower"     
      device_class: power      
      unit_of_measurement: "W"
    - name: "ECOFLOW Output Pwr"
      state_topic: "ecoflow/outputWatts"
      device_class: power
      unit_of_measurement: "W"
    - name: "ECOFLOW Input Pwr"
      state_topic: "ecoflow/inputWatts"
      device_class: power
      unit_of_measurement: "W"
```
# Setup
## Register as developer at Ecoflow
* go to https://developer.ecoflow.com/
* register
* set up a key
<img width="1482" height="139" alt="image" src="https://github.com/user-attachments/assets/9a3a5a7d-58d2-4baa-8f64-a693b30039fd" />

## Set up an MQTT server
You can add a server to homeassistant https://www.home-assistant.io/integrations/mqtt/

## Configure addon
* Configure your key and secret from developer registration
* Configure your device serial number (sn)
* Configure your MQTT server to publish data to
<img width="1430" height="755" alt="image" src="https://github.com/user-attachments/assets/5f0955d1-8ec6-46ef-859b-7271c4b10717" />

## Add some sensors to configuration.yaml
* This page explains how https://www.home-assistant.io/getting-started/configuration/#editing-the-configurationyaml-and-configuring-file-access
* use the example snippet above for start

## Example Diagram
<img width="1525" height="548" alt="image" src="https://github.com/user-attachments/assets/55ef2fa1-d92f-4694-8e4e-8d754086ca0e" />



# References:
- https://www.home-assistant.io/
- https://developers.home-assistant.io/
- https://developers.home-assistant.io/docs/add-ons/tutorial/
- https://github.com/Mark-Hicks/ecoflow-api-examples
- https://developer.ecoflow.com/
