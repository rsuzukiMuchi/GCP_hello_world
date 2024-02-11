# Use the official Python image.
# https://hub.docker.com/_/python
FROM python:3.11-slim

# Create and change to the app directory.
WORKDIR /app

# Copy local code to the container image.
COPY . ./

# Install production dependencies.
RUN pip install -r requirements.txt

# Run the web service on container startup.
CMD [ "python", "main.py" ]
