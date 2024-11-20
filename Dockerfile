# Use the official Python image as the base
FROM python:3

# Set the working directory in the container
WORKDIR /app

# Copy the project files into the container
COPY . /app

# Install required Python packages
# Ensure you have a requirements.txt file in the project root
RUN pip install --no-cache-dir -r requirements.txt

# Set the default working directory to the src folder
WORKDIR /app/src

# Expose any ports if needed (optional, not strictly necessary for pygame)
EXPOSE 8000

# Command to run the application
CMD ["python", "main.py"]
