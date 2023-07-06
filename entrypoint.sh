#!/bin/bash

# Check if config.txt exists in the config directory
if [ ! -f "/app/config/config.txt" ]; then
  echo "Copying config.txt to the config directory..."
  cp /app/config.txt /app/config/
fi

# Start the JAR file
java -Dnogui=true -Dconfig=/app/config/config.txt -jar JMusicBot-0.3.9.jar