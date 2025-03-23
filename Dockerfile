# Use an official Groovy image with JDK
FROM groovy:3.0.9-jdk8

# Set the working directory inside the container
WORKDIR /app

# Copy files and preserve the permissions directly
COPY --chmod=0755 runme.sh ./runme.sh
COPY . .

# Expose a port (if applicable; adjust as necessary)
EXPOSE 8080

# Specify the script to execute when the container runs
CMD ["sh", "./runme.sh"]
