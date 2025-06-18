FROM ggmartinez/laravel:php-8.3-apache
COPY . /var/www/html 

WORKDIR /var/www/html
COPY .env.example .env
RUN composer install --no-interaction --no-scripts --no-progress 
RUN php artisan key:generate
