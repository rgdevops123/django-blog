# Set the Base Image.
FROM python:3.6.8

# File Author / Maintainer
MAINTAINER Robert Griffith

# Add project files to the /usr/src/app folder.
ADD . /usr/src/app

# Set the directory where CMD will execute. 
WORKDIR /usr/src/app
COPY requirements.txt ./

# Get pip to download and install requirements.
RUN pip install --no-cache-dir -r requirements.txt

# Expose ports.
EXPOSE 8000

# Default command to execute.
CMD exec gunicorn django_project.wsgi:application --bind 0.0.0.0:8000 --workers 3
