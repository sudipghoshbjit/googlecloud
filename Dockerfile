FROM centos:latest
RUN yum install -y httpd 
COPY ./src/index.html /var/www/html

WORKDIR /var/www/html
RUN chmod 777 /var/www/html
CMD ["/usr/sbin/hhtpd", "-D" "FORGROUND"]
EXPOSE 80
