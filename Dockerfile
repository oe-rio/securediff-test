FROM python:3.10-slim

# HIGH SEVERITY: Running the container as root
USER root

# Setup the application directory
WORKDIR /app
COPY . /app

# Install dependencies
RUN pip install -r requirements.txt

# Expose a debug port
EXPOSE 8080

# Run the vulnerable application
CMD ["python", "app.py"]
