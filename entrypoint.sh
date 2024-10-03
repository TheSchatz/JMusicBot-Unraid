#!/bin/bash

# Check if config.txt exists in the config directory
if [ ! -f "/app/config/config.txt" ]; then
  echo "Copying config.txt to the config directory..."
  cp /app/config.txt /app/config/
fi

# Set the permissions for the config.txt file
chmod a+rw /app/config/config.txt

# Get the newest JAR file name
jar=$(ls -t /app/config | grep '.jar' | head -n 1)

#copy jar to /app
cp /app/config/$jar /app/

# Start the JAR file
java -Dnogui=true -Dconfig=/app/config/config.txt -jar "/app/$jar"
