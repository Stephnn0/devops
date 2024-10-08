server {
    listen 80;

    server_name your_domain_or_ip;  # Replace with your domain or IP address

    location / {
        proxy_pass http://localhost:3000;  # Redirect to your Docker container
        proxy_http_version 1.1;
        proxy_set_header Upgrade $http_upgrade;
        proxy_set_header Connection 'upgrade';
        proxy_set_header Host $host;
        proxy_cache_bypass $http_upgrade;
    }
}
