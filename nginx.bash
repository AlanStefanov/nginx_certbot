#!/bin/bash

# Actualizar los paquetes del sistema
sudo apt update

# Instalar Nginx
sudo apt install -y nginx

# Verificar si Nginx se está ejecutando
sudo systemctl status nginx

# Agregar el repositorio de Certbot
sudo add-apt-repository -y ppa:certbot/certbot

# Actualizar los paquetes después de agregar el repositorio
sudo apt update

# Instalar Certbot y el plugin de Nginx
sudo apt install -y certbot python3-certbot-nginx

# Obtener y configurar automáticamente el certificado SSL
sudo certbot --nginx

# Verificar si Certbot está configurado correctamente
sudo certbot renew --dry-run

# Reiniciar Nginx para aplicar los cambios
sudo systemctl restart nginx

# Verificar el estado de Nginx nuevamente
sudo systemctl status nginx
