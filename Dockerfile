FROM nginx:1.16.1-alpine

COPY nginx.conf /etc/nginx/

COPY entrypoint.sh /usr/local/bin/entrypoint.sh

EXPOSE 80

ENTRYPOINT ["/usr/local/bin/entrypoint.sh"]

CMD ["nginx"]