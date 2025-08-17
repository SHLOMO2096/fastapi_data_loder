
oc new-app --name=mysql -e MYSQL_ROOT_PASSWORD=0000 -e MYSQL_DATABASE=products -e MYSQL_USER=shlomo -e MYSQL_PASSWORD=1234 mysql:8.0

oc set volumes deployment mysql --add --mount-path=/mypvc --name=mypvc --claim-name=mypvc --read-only=false --type=persistentVolumeClaim --claim-size=1Gi

oc rsh mysql-797bdd7b6-hfddd

mysql -u shlomo -p products

CREATE TABLE names (id INT PRIMARY KEY AUTO_INCREMENT,first_name VARCHAR(50),last_name VARCHAR(50));

INSERT INTO names (first_name, last_name) VALUES ('shlomo', 'loberbom'),('shlomo','turgeman');

oc new-app https://github.com/SHLOMO2096/fastapi_data_loder#Work-area

oc get deployment

oc expose deployment fastapidataloder --name=service-fastapi --port=8080

oc get service

oc expose service service-fastapi

oc get routes