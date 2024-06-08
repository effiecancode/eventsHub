# Use an official Python runtime as a parent image
FROM python:3.8-slim-buster

# Set environment variables
ENV PYTHONUNBUFFERED 1

# Set work directory
WORKDIR /app

# copy .env to container
# Copy .env file to the container
COPY .env .env

# Install dependencies
COPY requirements.txt .

# Install PostgreSQL client and development files
RUN apt-get update && apt-get install -y postgresql-client libpq-dev build-essential

RUN pip install --upgrade pip && \
    pip install -r requirements.txt

# copy project
COPY . .

# Give django.sh execute permissions
RUN chmod +x /app/django.sh

# Expose port 8000
EXPOSE 8000

# the command to run my application
ENTRYPOINT ["/app/django.sh"]