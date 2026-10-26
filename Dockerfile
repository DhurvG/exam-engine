FROM alpine
RUN apk add --no-cache busybox-extras && mkdir -p /www && echo "Proctor Service Running" > /www/index.html
EXPOSE 80
CMD ["sh", "-c", "echo 'Proctor Service Running' && busybox-extras httpd -f -p 80 -h /www"]
