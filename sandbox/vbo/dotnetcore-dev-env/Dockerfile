# with dotnetcore and nodejs
# FROM microsoft/dotnet:2.0-sdk
FROM mcr.microsoft.com/dotnet/core/sdk:2.2
WORKDIR /app
RUN apt-get update
RUN curl -sL https://deb.nodesource.com/setup_9.x | bash -
RUN apt-get install net-tools procps vim nano tree nodejs openssh-server -y

RUN mkdir /var/run/sshd
RUN echo 'root:root' | chpasswd
RUN sed -i 's/PermitRootLogin prohibit-password/PermitRootLogin yes/' /etc/ssh/sshd_config
# SSH login fix. Otherwise user is kicked off after login
RUN sed 's@session\s*required\s*pam_loginuid.so@session optional pam_loginuid.so@g' -i /etc/pam.d/sshd
ENV NOTVISIBLE "in users profile"
RUN echo "export VISIBLE=now" >> /etc/profile
RUN useradd userx
RUN echo 'userx:userx' | chpasswd
RUN echo 'alias ls="ls --color"' >> /root/.bashrc

EXPOSE 5000
EXPOSE 8000
EXPOSE 22
EXPOSE 80
CMD service ssh start && tail -f /var/log/lastlog
