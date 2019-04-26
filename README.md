# docker-mysql

It is easy to fire up a docker container running mysql, as follows (server.sh)

`docker run --name trifacta-mysql --network vijaynet -p 3306:3306 -p 33060:33060 -e MYSQL_ROOT_PASSWORD=trifacta -d mysql:5.7`

Once the container is running, you can connect to it using the mysql client tool (client.sh)

```
#docker exec -it trifacta-mysql mysql -u root -p    #OR
mysql -h 127.0.0.1 -uroot -p

#https://dev.mysql.com/doc/mysql-installation-excerpt/5.5/en/docker-mysql-getting-started.html
```

You can also use a JDBC command line client to connect to it (jdbc-client.sh)

```
docker run -ti --rm --network vijaynet -v $(pwd):/host java:8-jre-alpine java -jar /host/jdbcsql.zip -h trifacta-mysql -p 3306 -U root -P trifacta -d vijay -m mysql "SHOW DATABASES;"
```

Details of this command line tool can be found [here](http://jdbcsql.sourceforge.net/)

