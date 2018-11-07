# Use an official Python runtime as a parent image
FROM jolielang/jolie

# Set the working directory to /app
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY ./app /app

# Run app.py when the container launches
CMD ["jolie", "match.ol"]