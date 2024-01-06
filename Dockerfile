# Use the official Python 3.11 image as the base image
FROM python:3.11

# Set the working directory in the container
WORKDIR /app

COPY .devcontainer .
COPY . .

# Install the Python dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy the rest of the application code to the container

