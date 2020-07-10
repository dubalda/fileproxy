FROM nginx:1.17.10-alpine

COPY default.conf /etc/nginx/conf.d/default.conf

RUN cat /etc/nginx/conf.d/default.conf && \
    rm /usr/share/nginx/html/index.html && \
    mkdir -p /usr/share/nginx/html/postman-reports && \
    chmod -R 777 /usr/share/nginx/html/postman-reports && \
    mkdir -p /usr/share/nginx/html/jdk && \
    echo wget -P /usr/share/nginx/html/jdk https://download.java.net/openjdk/jdk11/ri/openjdk-11+28_windows-x64_bin.zip && \ 
    ls -lh /usr/share/nginx/html/jdk && \
    mkdir -p /usr/share/nginx/html/gradle && \
    echo wget -P /usr/share/nginx/html/gradle https://services.gradle.org/distributions/gradle-5.6.3-bin.zip && \ 
    ls -lh /usr/share/nginx/html/gradle && \
    mkdir -p /usr/share/nginx/html/node && \
    echo wget -P /usr/share/nginx/html/node https://nodejs.org/dist/v12.18.1/node-v12.18.1-win-x64.zip && \ 
    ls -lh /usr/share/nginx/html/node && \
    mkdir -p /usr/share/nginx/html/idea && \
    echo wget -P /usr/share/nginx/html/idea https://download.jetbrains.com/idea/ideaIU-2020.1.2.exe && \ 
    wget -P /usr/share/nginx/html/idea https://plugins.jetbrains.com/files/6317/83653/lombok-plugin-0.30-2020.1.zip && \ 
    ls -lh /usr/share/nginx/html/idea && \
    mkdir -p /usr/share/nginx/html/node-sass/v4.11.0 && \
    echo wget -P /usr/share/nginx/html/node-sass/v4.11.0 https://github.com/sass/node-sass/releases/download/v4.11.0/linux-x64-64_binding.node && \ 
    ls -lh /usr/share/nginx/html/node-sass/v4.11.0 && \
    mkdir -p /usr/share/nginx/html/node-sass/v4.12.0 && \
    echo wget -P /usr/share/nginx/html/node-sass/v4.12.0 https://github.com/sass/node-sass/releases/download/v4.12.0/linux-x64-72_binding.node && \ 
    ls -lh /usr/share/nginx/html/node-sass/v4.12.0 && \
    wget -P /usr/share/nginx/html https://github.com/RocketChat/Rocket.Chat.Electron/releases/download/2.17.7/rocketchat-setup-2.17.7.exe && \
    mkdir -p /usr/share/nginx/html/vscode && \
    echo wget -P /usr/share/nginx/html/vscode/ https://aka.ms/win32-x64-user-stable && \
    echo mv /usr/share/nginx/html/vscode/win32-x64-user-stable /usr/share/nginx/html/vscode/win32-x64-user-stable.exe && \
    mkdir -p /usr/share/nginx/html/webfonts && \
    wget -P /usr/share/nginx/html/webfonts https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.0/webfonts/fa-solid-900.ttf && \
    wget -P /usr/share/nginx/html/webfonts https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.0/webfonts/fa-solid-900.woff && \
    wget -P /usr/share/nginx/html/webfonts https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.0/webfonts/fa-solid-900.woff2 && \
    wget -P /usr/share/nginx/html/webfonts https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.0/webfonts/fa-regular-400.eot && \
    wget -P /usr/share/nginx/html/webfonts https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.0/webfonts/fa-solid-900.eot && \
    wget -P /usr/share/nginx/html/webfonts https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.0/webfonts/fa-regular-400.woff && \
    wget -P /usr/share/nginx/html/webfonts https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.0/webfonts/fa-regular-400.tff && \
    ls -lh /usr/share/nginx/html/webfonts && \
    mkdir -p /usr/share/nginx/html/newman-html-extra && \
    wget -P /usr/share/nginx/html/newman-html-extra https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.0/css/all.min.css && \
    wget -P /usr/share/nginx/html/newman-html-extra https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css && \
    wget -P /usr/share/nginx/html/newman-html-extra https://cdnjs.cloudflare.com/ajax/libs/highlight.js/9.13.1/styles/github-gist.min.css && \
    wget -P /usr/share/nginx/html/newman-html-extra https://cdn.datatables.net/v/bs4/dt-1.10.18/datatables.min.css && \
    wget -P /usr/share/nginx/html/newman-html-extra https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.min.js && \
    wget -P /usr/share/nginx/html/newman-html-extra https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.2.1/js/bootstrap.bundle.min.js && \
    wget -P /usr/share/nginx/html/newman-html-extra https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.2.1/js/bootstrap.bundle.min.js.map && \
    wget -P /usr/share/nginx/html/newman-html-extra https://cdn.datatables.net/v/bs4/dt-1.10.18/datatables.min.js && \
    wget -P /usr/share/nginx/html/newman-html-extra https://cdnjs.cloudflare.com/ajax/libs/clipboard.js/2.0.0/clipboard.min.js && \
    wget -P /usr/share/nginx/html/newman-html-extra https://cdnjs.cloudflare.com/ajax/libs/remarkable/1.7.1/remarkable.min.js && \
    wget -P /usr/share/nginx/html/newman-html-extra https://cdnjs.cloudflare.com/ajax/libs/highlight.js/9.13.1/highlight.min.js && \
    ls -lh /usr/share/nginx/html
