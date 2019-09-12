Wordpress fpm + nginx + mysql + letsencrypt SSL containers multisite configuration template

Following need to changed before executing "docker-compose up"

1. change root password in ./env/.env
3. Use credentials from #1 for site credentials in ./env/.wp-env.
4. Change domains in ./docker-compose.yaml for certificate generation.
5. Change domain in ./nginx/conf.d/site.conf "server_name"

Run docker-compose up to start the containers and generate certificates (need to uncomment lines for "actual certificate" generation) 
once all is running except the certbots
Press ctrl+c to kill the command
Stop containers with docker-compose down

Now change following to use certificates generated

1. In ./nginx/conf.d/site.conf, ssl_certificate and ssl_certificate_key use cert generated /etc/letsencrypt/live/<domain name>/...

start containers with "docker-compose up -d"