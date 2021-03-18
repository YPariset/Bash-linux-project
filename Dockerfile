FROM registry.aptero.co/projet-linux:latest
COPY ./html_root ./html_root 
COPY ./install_nginx_1.sh
COPY ./install_nginx_2.sh
RUN ./install_nginx_1.sh
RUN ./install_nginx_2.sh


 
