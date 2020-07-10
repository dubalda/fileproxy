FROM nginx:1.17.10-alpine

COPY default.conf /etc/nginx/conf.d/default.conf

RUN cat /etc/nginx/conf.d/default.conf && \
    rm /usr/share/nginx/html/index.html && \
    mkdir -p /usr/share/nginx/html/jdk && \
    wget -P /usr/share/nginx/html/jdk https://download.java.net/openjdk/jdk11/ri/openjdk-11+28_windows-x64_bin.zip && \ 
    ls -lh /usr/share/nginx/html/jdk && \
    mkdir -p /usr/share/nginx/html/gradle && \
    wget -P /usr/share/nginx/html/gradle https://services.gradle.org/distributions/gradle-5.6.3-bin.zip && \ 
    ls -lh /usr/share/nginx/html/gradle && \
    mkdir -p /usr/share/nginx/html/node && \
    wget -P /usr/share/nginx/html/node https://nodejs.org/dist/v12.18.1/node-v12.18.1-win-x64.zip && \ 
    ls -lh /usr/share/nginx/html/node && \
    mkdir -p /usr/share/nginx/html/idea && \
    wget -P /usr/share/nginx/html/idea https://download.jetbrains.com/idea/ideaIU-2020.1.2.exe && \ 
    wget -P /usr/share/nginx/html/idea https://plugins.jetbrains.com/files/6317/83653/lombok-plugin-0.30-2020.1.zip && \ 
    ls -lh /usr/share/nginx/html/idea && \
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
    ls -lh /usr/share/nginx/html
