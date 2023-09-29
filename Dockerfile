# Instructions  Arguments
FROM devopsedu/webapp
# Set the working directory to /app
WORKDIR /app
# Copy the current directory contents into the container at /app
COPY . /app
# Install any needed packages
RUN apt-get update
RUN apt-get install apache2 -y
RUN apt-get install php -y
# Make port 80 available to the world outside this container
EXPOSE 80
# Define environment variable
ENV NAME World
# Run when the container launches
CMD ["apache2ctl","-D", "FOREGROUND"]
