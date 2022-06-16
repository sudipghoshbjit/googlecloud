FROM centos:latest
RUN yum install -y httpd 
COPY index.html /var/www/html
WORKDIR /var/www/html
RUN chmod 777 /var/www/html
EXPOSE 80
CMD ["/usr/sbin/hhtpd", "-D" "FORGROUND"]
