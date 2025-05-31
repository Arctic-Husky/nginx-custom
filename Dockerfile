# Puxa a imagem oficial do Nginx
FROM nginx:latest

# Adiciona o nginx-full para obter o módulo do fascgi
RUN apt-get update && apt-get install -y nginx-full

# Copia a configuração que eu já havia previamente configurado
COPY default.conf /usr/share/nginx/default.conf