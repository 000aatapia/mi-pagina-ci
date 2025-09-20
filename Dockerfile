# Imagen base ligera de Nginx
FROM nginx:alpine

# Copiar tu página y otros recursos al contenedor
COPY . /usr/share/nginx/html

# El contenedor expondrá el puerto 80
EXPOSE 80
