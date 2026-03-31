# Use an official Python runtime as a parent image
FROM python:3.11-slim

# Set the working directory in the container
WORKDIR /code

# Copy the requirements file first (for better caching)
COPY ./requirements.txt /code/requirements.txt

# Install dependencies
RUN pip install --no-cache-dir --upgrade -r /code/requirements.txt

# Copy the application code
COPY ./app /code/app

# Command to run the application
# We point to 'app.main:app' (folder.file:variable)
CMD ["uvicorn", "app.main:app", "--host", "0.0.0.0", "--port", "80"]