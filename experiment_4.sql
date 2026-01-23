21st January,2026

mysql> create database country;
Query OK, 1 row affected (0.15 sec)

mysql> use country;
Database changed
mysql> create table regions(region_id int primary key,region_name varchar(50));
Query OK, 0 rows affected (1.08 sec)

mysql> create table countries(country_id char(2) primary key,region_name varchar(50));

^C
mysql> create table regions(region_id int primary key,region_name varchar(50));
ERROR 1050 (42S01): Table 'regions' already exists
mysql> create table country(country_id char(2) primary key,country_name varchar(50));



Query OK, 0 rows affected (0.58 sec)

mysql>
mysql>
mysql>
mysql>
mysql>
mysql>
mysql>
mysql> -drop table country;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '-drop table country' at line 1
mysql> show tables;
+-------------------+
| Tables_in_country |
+-------------------+
| country           |
| regions           |
+-------------------+
2 rows in set (0.01 sec)

mysql> drop table country;
Query OK, 0 rows affected (0.71 sec)

mysql> create table countries(country_id char(2) primary key,country_name varchar(50),region_id int,foreign key(region_id) references regions(region_id));
Query OK, 0 rows affected (1.75 sec)

mysql>

