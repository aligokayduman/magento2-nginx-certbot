FROM ubuntu:latest

MAINTAINER A. Gökay Duman <aligokayduman@gmail.com>

#Install Nginx
RUN apt update \ 
    && apt upgrade -y \
    && apt install -y apt-utils apt-transport-https nginx

#Install CertBot
RUN apt update \
    && apt install software-properties-common \
    && add-apt-repository universe \
    && add-apt-repository ppa:certbot/certbot \
    && apt update \
    && apt install certbot python-certbot-nginx    

CMD ["nginx", "-g", "daemon off;"]
