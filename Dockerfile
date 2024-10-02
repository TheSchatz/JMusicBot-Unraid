# Base image
FROM eclipse-temurin:11-jre

# Update the packages in the image
RUN apt-get update

# Set working directory
WORKDIR /app

# Make config folder
RUN mkdir config

# Copy the entrypoint script to the container
COPY entrypoint.sh /app/entrypoint.sh

# Make the entrypoint script executable
RUN chmod +x /app/entrypoint.sh

# Set the entrypoint to run the entrypoint script
ENTRYPOINT ["/app/entrypoint.sh"]
