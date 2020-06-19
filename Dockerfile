FROM nginx:1.17.10-alpine

COPY default.conf /etc/nginx/conf.d/default.conf

RUN cat /etc/nginx/conf.d/default.conf && \
    rm /usr/share/nginx/html/index.html && \
    mkdir -p /usr/share/nginx/html/node-sass/v4.11.0 && \
    wget -P /usr/share/nginx/html/node-sass/v4.11.0 https://github.com/sass/node-sass/releases/download/v4.11.0/linux-x64-64_binding.node && \ 
    ls -lh /usr/share/nginx/html/node-sass/v4.11.0 && \
    mkdir -p /usr/share/nginx/html/node-sass/v4.12.0 && \
    wget -P /usr/share/nginx/html/node-sass/v4.12.0 https://github.com/sass/node-sass/releases/download/v4.12.0/linux-x64-72_binding.node && \ 
    ls -lh /usr/share/nginx/html/node-sass/v4.12.0 && \
    wget -P /usr/share/nginx/html https://github.com/RocketChat/Rocket.Chat.Electron/releases/download/2.17.7/rocketchat-setup-2.17.7.exe && \
    mkdir -p /usr/share/nginx/html/vscode && \
    wget -P /usr/share/nginx/html/vscode/ https://aka.ms/win32-x64-user-stable && \
    mv /usr/share/nginx/html/vscode/win32-x64-user-stable /usr/share/nginx/html/vscode/win32-x64-user-stable.exe && \
    mkdir -p /usr/share/nginx/html/newman-html-extra && \
    wget -P /usr/share/nginx/html/newman-html-extra https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.0/css/all.min.css && \
    wget -P /usr/share/nginx/html/newman-html-extra https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css && \
    wget -P /usr/share/nginx/html/newman-html-extra https://cdnjs.cloudflare.com/ajax/libs/highlight.js/9.13.1/styles/github-gist.min.css && \
    wget -P /usr/share/nginx/html/newman-html-extra https://cdn.datatables.net/v/bs4/dt-1.10.18/datatables.min.css && \
    ls -lh /usr/share/nginx/html

