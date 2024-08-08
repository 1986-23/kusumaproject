FROM ubuntu:latest

# Install any necessary packages (e.g., curl, bash)
RUN apt-get update && apt-get install -y \
    bash 

# Set the working directory inside the container
WORKDIR /app

# Copy the shell script into the container
COPY hello.sh .

# Make the shell script executable
RUN chmod +x hello.sh

# Run the shell script
CMD ["./hello.sh"]
