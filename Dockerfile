# Puxa a imagem oficial do Nginx bookworm, para ter acesso ao módulo fastcgi
FROM nginx:1.27.5-bookworm

# Copia a configuração que eu já havia previamente configurado
COPY default.conf /usr/share/nginx/default.conf

# Mantém o nginx rodando em foreground
CMD ["nginx", "-g", "daemon off;"]