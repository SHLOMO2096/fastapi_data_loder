oc new-app --name=mysql -e MYSQL_ROOT_PASSWORD=0000 -e MYSQL_DATABASE=products -e MYSQL_USER=shlomo -e MYSQL_PASSWORD=1234 mysql:8.0

oc rsh mysql-65b5d688b7-h5b5x

mysql -u shlomo -p products

CREATE TABLE names (id INT PRIMARY KEY AUTO_INCREMENT,first_name VARCHAR(50),last_name VARCHAR(50));