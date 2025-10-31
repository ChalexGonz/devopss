# Imagen base con PHP + Apache
FROM php:8.2-apache

# Copiar index.php a la raíz web
COPY index.php /var/www/html/

# Copiar carpeta dist completa
COPY dist/ /var/www/html/dist/

# Habilitar mod_rewrite (por si lo necesitas para rutas limpias)
RUN a2enmod rewrite

# Exponer puerto 80
EXPOSE 80

