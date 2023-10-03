# Use an official Apache HTTP Server image as the base image
FROM httpd:latest

# Set the Apache server to use UTF-8 encoding for Telugu text
ENV LANG te_IN.UTF-8

# Copy the local HTML file to the webserver directory
COPY index.html /usr/local/apache2/htdocs/

# Copy the local image file to the webserver directory
COPY images/*.jpg /usr/local/apache2/htdocs/
