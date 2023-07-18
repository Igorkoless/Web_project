# Використовуємо базовий образ Nginx
FROM nginx:latest

# Копіюємо файли конфігурації Nginx у контейнер
COPY nginx.conf /etc/nginx/nginx.conf
COPY default.conf /etc/nginx/conf.d/default.conf

# Викладаємо порти, на яких буде прослуховуватись Nginx
EXPOSE 80
EXPOSE 443

# Копіюємо файли вашого веб-сайту у контейнер
COPY . /usr/share/nginx/html

# Команда, яка буде виконуватись при запуску контейнера
CMD ["nginx", "-g", "daemon off;"]
