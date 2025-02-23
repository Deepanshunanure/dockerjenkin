FROM jenkins/jenkins:lts

# Switch to root user to install dependencies
USER root

# Update package list and install Python and venv
RUN apt-get update && apt-get install -y python3 python3-venv && rm -rf /var/lib/apt/lists/*

# Switch back to Jenkins user
USER jenkins
