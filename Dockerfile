FROM nginx:1.19

RUN apt-get update && apt-get install -y nginx-extras && rm -rf /var/lib/apt/lists/* 

COPY nginx.conf /etc/nginx/nginx.conf

COPY theme /theme

VOLUME /share

EXPOSE 80

CMD ["nginx"]