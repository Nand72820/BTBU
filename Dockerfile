# Use an official Python runtime as a parent image
FROM python:3.10-slim

# Set the working directory in the container
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Make all files executable
RUN chmod +x *

# Expose the port (optional, if your app requires it)
EXPOSE 8080

# Set the default command to run the application
CMD ["python3", "nand.py"]
