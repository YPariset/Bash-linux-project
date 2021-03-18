FROM registry.aptero.co/projet-linux:latest
COPY ./html_root /projet-Linux/html_root 
COPY ./install_nginx_1.sh /projet-Linux
COPY ./install_nginx_2.sh /projet-Linux
RUN ./install_nginx_1.sh
RUN ./install_nginx_2.sh


 
