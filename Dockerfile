# Use an official OpenJDK runtime as a parent image
FROM openjdk:17-jdk-slim

# Set the working directory inside the container
WORKDIR /app

# Copy the Java source file (Main.java) and the configuration file (pem.xml) to the container
COPY Main.java /app/Main.java
COPY pem.xml /app/pem.xml

# Compile the Java source file inside the container
RUN javac Main.java

# Expose port (adjust if your app listens on another port)
EXPOSE 8080

# Command to run the Java application
ENTRYPOINT ["java", "Main"]
