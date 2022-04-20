FROM ubuntu
RUN apt-get update
ENV TZ=Asia/Kolkata
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone
RUN apt-get install apache2 -y
RUN apt-get install apache2-utils -y
RUN apt-get clean

#WORKDIR /var/www/html
 
COPY . /var/www/html

EXPOSE 80
CMD ["apache2ctl","-D","FOREGROUND"]
