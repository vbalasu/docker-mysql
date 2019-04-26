docker run --name trifacta-mysql --network vijaynet -p 3306:3306 -p 33060:33060 -e MYSQL_ROOT_PASSWORD=trifacta -d mysql:5.7
