sudo nano /etc/nginx/sites-available/my-app

sudo ln -s /etc/nginx/sites-available/my-app /etc/nginx/sites-enabled/

sudo nginx -t

sudo systemctl reload nginx

--------------------------------- logs

sudo tail -f /var/log/nginx/error.log

