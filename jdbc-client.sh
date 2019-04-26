docker run -ti --rm --network vijaynet -v $(pwd):/host java:8-jre-alpine java -jar /host/jdbcsql.zip -h trifacta-mysql -p 3306 -U root -P trifacta -d vijay -m mysql "SHOW DATABASES;"
