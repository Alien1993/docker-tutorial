# Use an official python runtime as parent image
FROM python:2.7-slim

# Sets the working directory to /app
WORKDIR /app

# Copies current directory files into container at /app
ADD . /app

# Installs requirements
RUN pip install -r requirements.txt

# Exposes container port 80
EXPOSE 80

# Defines an environment variable
ENV NAME World

# Runs the app when container launches
CMD ["python", "app.py"]
