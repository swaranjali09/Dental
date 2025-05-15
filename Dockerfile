# Use an official PHP image with Apache
FROM php:8.2-apache

# Install extensions
RUN docker-php-ext-install mysqli

# Copy your PHP project to the Apache root directory
COPY . /var/www/html/

# Set proper permissions
RUN chown -R apache:apache /var/www/html 

# Expose port 80
EXPOSE 80
