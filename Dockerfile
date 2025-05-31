# Puxa a imagem oficial do Nginx bookworm, para poder adicionar o pacote nginx-full
FROM nginx:1.27.5-bookworm

# Adiciona o nginx-full para obter o módulo do fascgi
RUN apt-get update && \
    apt-get install -y nginx-full && \
    rm -rf /var/lib/apt/lists/*

# Copia a configuração que eu já havia previamente configurado
COPY default.conf /usr/share/nginx/default.conf

# Mantém o nginx rodando em foreground
CMD ["nginx", "-g", "daemon off;"]