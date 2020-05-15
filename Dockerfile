FROM nginx:1.17.10-alpine

COPY default.conf /etc/nginx/conf.d/default.conf

RUN cat /etc/nginx/conf.d/default.conf && \
    rm /usr/share/nginx/html/index.html && \
    mkdir -p /usr/share/nginx/html/node-sass/v4.12.0 && \
    wget -P /usr/share/nginx/html/node-sass/v4.12.0 https://github.com/sass/node-sass/releases/download/v4.12.0/linux-x64-72_binding.node && \ 
    ls -lh /usr/share/nginx/html/node-sass/v4.12.0 && \
    wget -P /usr/share/nginx/html https://github.com/RocketChat/Rocket.Chat.Electron/releases/download/2.17.7/rocketchat-setup-2.17.7.exe && \
    wget -P /usr/share/nginx/html https://aka.ms/win32-x64-user-stable && \
    ls -lh /usr/share/nginx/html

