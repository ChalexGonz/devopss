# Imagen base con PHP y Apache
FROM php:8.2-apache

# Copiar index.php al directorio raíz de Apache
COPY index.php /var/www/html/

# Copiar la carpeta dist al directorio raíz de Apache
COPY dist/ /var/www/html/dist/

# Habilitar mod_rewrite por si lo necesitas
RUN a2enmod rewrite

# Exponer el puerto 80
EXPOSE 80

