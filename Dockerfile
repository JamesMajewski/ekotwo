# Use an official Python runtime as a parent image
FROM python:3.9-slim

# Set the working directory in the container
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Install system dependencies for Playwright
COPY install_playwright.sh /install_playwright.sh
RUN chmod +x /install_playwright.sh && /install_playwright.sh

# Install Python dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Make port 5000 available to the world outside this container
EXPOSE 5000

# Run app.py when the container launches
CMD ["gunicorn", "app:app", "--bind", "0.0.0.0:5000"]
