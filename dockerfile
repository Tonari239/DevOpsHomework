FROM ubuntu:latest

# Update the package repositories and install necessary packages
RUN apt-get update && apt-get install -y python3 python3-pip python3-dev build-essential

# Set the working directory in the container
WORKDIR /app

# Copy your application code and requirements file
COPY src/ /app/src/
COPY src/requirements.txt /app/

# Install Python dependencies
RUN pip3 install -r /app/requirements.txt

EXPOSE 5000
# Run your application
CMD ["python3","/app/src/app.py"]




