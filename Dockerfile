FROM php:7.2-apache


RUN useradd -G www-data -m Robin && sed -i "s/DocumentRoot.*$/DocumentRoot \/home\/Robin\/TP_Docker\//" $(grep -l DocumentRoot $(find /etc/apache2 -type f)) && sed -i "s/\<Directory \/var\/www.*$/Directory \/home\/Robin\/TP_Docker\/\>/" $(grep -l "<Directory /var/www/>" $(find /etc/apache2 -type f)) && mkdir /home/Robin/TP_Docker && chown www-data /home/Robin/TP_Docker -Rf && chmod 775 -R /home/Robin/TP_Docker && echo "<html><body><p>C'est Bon réussi !!!!!</p></body></html>" > /home/Robin/TP_Docker/index.html