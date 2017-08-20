FROM  mongo
MAINTAINER   jianyeruan "jianyeruan@gmail.com"
ADD mongod.conf /etc/mongod.conf
ADD run.sh /run.sh
RUN chmod 755 /run.sh
RUN mkdir -p /data/db
RUN mkdir -p /data/log
RUN touch  /data/log/mongod.log
RUN apt-get update
RUN apt-get -y upgrade 

#WORKDIR /usr/share/app/node
#EXPOSE 22
#RUN mkdir -p /data/db
#USER 751
#RUN chmod 755 /start.sh
#RUN chown -R www-data:www-data /usr/share/nginx/www
#VOLUME ["/data"]
