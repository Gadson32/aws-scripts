#!/bin/bash
# Update the system
yum update -y

# Install Nginx
amazon-linux-extras install nginx1 -y

# Start Nginx and enable on boot
systemctl start nginx
systemctl enable nginx

# Create a custom HTML page
echo "<html>
  <head><title>My AWS Server</title></head>
  <body>
    <h1>EC2 is live. Built by [Your Name]</h1>
    <p>Nginx running on Amazon Linux</p>
  </body>
</html>" > /usr/share/nginx/html/index.html