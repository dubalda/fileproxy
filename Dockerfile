FROM nginx:1.19.1

COPY default.conf /etc/nginx/conf.d/default.conf

RUN cd /tmp && \
    apt-get update && \
    apt-get download -y --quiet git && \
    mkdir -p /usr/share/nginx/html/git && \
    mv git* /usr/share/nginx/html/git/ && \
    apt-get -y --quiet --no-install-recommends install \
      tree \
      wget && \
    apt-get clean && \
    cd /usr/share/nginx/html/ && \
    cat /etc/nginx/conf.d/default.conf && \
    rm /usr/share/nginx/html/index.html && \
    mkdir -p \
      devops \
      rocketchat \
      jmeter \
      activemq \
      jdk \
      gradle \
      node/node-sass/v4.11.0 \
      node/node-sass/v4.12.0 \
      ide/idea \
      ide/vscode && \
    wget -P ./devops https://github.com/derailed/k9s/releases/download/v0.22.1/k9s_Linux_x86_64.tar.gz && \  
    wget -P ./git https://github.com/git-for-windows/git/releases/download/v2.28.0.windows.1/Git-2.28.0-64-bit.exe && \
    wget -P ./git https://github.com/git-for-windows/git/releases/download/v2.28.0.windows.1/PortableGit-2.28.0-64-bit.7z.exe && \
    wget -P ./rocketchat https://github.com/RocketChat/Rocket.Chat.Electron/releases/download/2.17.11/rocketchat-setup-2.17.11.exe && \
    wget -P ./rocketchat https://github.com/RocketChat/Rocket.Chat.Electron/releases/download/3.0.2/rocketchat-setup-3.0.2.exe && \
    wget -P ./jmeter https://apache-mirror.rbc.ru/pub/apache/jmeter/binaries/apache-jmeter-5.3.zip && \
    wget -P ./activemq https://archive.apache.org/dist/activemq/5.15.13/apache-activemq-5.15.13-bin.zip && \ 
    wget -P ./jdk https://download.java.net/openjdk/jdk11/ri/openjdk-11+28_windows-x64_bin.zip && \ 
    wget -P ./jdk https://download.java.net/java/GA/jdk14.0.2/205943a0976c4ed48cb16f1043c5c647/12/GPL/openjdk-14.0.2_windows-x64_bin.zip && \ 
    wget -P ./jdk https://github.com/liquibase/liquibase/releases/download/v4.0.0/liquibase-4.0.0.zip && \ 
    wget -P ./gradle https://services.gradle.org/distributions/gradle-5.6.3-bin.zip && \ 
    wget -P ./gradle https://downloads.gradle-dn.com/distributions/gradle-6.5.1-bin.zip && \ 
    wget -P ./node https://nodejs.org/dist/v12.18.1/node-v12.18.1-win-x64.zip && \ 
    wget -P ./node/node-sass/v4.11.0 https://github.com/sass/node-sass/releases/download/v4.11.0/linux-x64-64_binding.node && \ 
    wget -P ./node/node-sass/v4.12.0 https://github.com/sass/node-sass/releases/download/v4.12.0/linux-x64-72_binding.node && \ 
    wget -P ./ide/idea https://download.jetbrains.com/idea/ideaIU-2020.1.2.exe && \ 
    wget -P ./ide/idea https://plugins.jetbrains.com/files/6317/83653/lombok-plugin-0.30-2020.1.zip && \ 
    wget -P ./ide/vscode/ https://aka.ms/win32-x64-user-stable && \
    mv ./ide/vscode/win32-x64-user-stable ./ide/vscode/win32-x64-user-stable.exe && \
    tree /usr/share/nginx/html
