B. Consider the database for an organization. Write SQL commands to implement the
following:
1. Create a database
mysql> create database organization;
Query OK, 1 row affected (0.14 sec)
  
2. Select the current database
mysql> use organization;
Database changed
  
3. Create the following tables:
a) Employee (emp_no varchar, emp_name varchar, dob date, address text, mobile_no integer, dept_no varchar, salary integer)
mysql> create table employee(emp_no varchar(15),emp_name varchar(20),dob date,address text,mobile_no integer,dept_no varchar(20),salary integer);
Query OK, 0 rows affected (1.22 sec)
  
b) Department (dept_no varchar, dept_name varchar, location varchar)
mysql> create table department(dept_no varchar(20),dept_name varchar(20),location varchar(15));
Query OK, 0 rows affected (1.29 sec)

4. List all tables in the current database.
mysql> show tables;
+------------------------+
| Tables_in_organization |
+------------------------+
| department             |
| employee               |
+------------------------+
2 rows in set (0.00 sec)
  
5. Display the structure of the Employee table and Department table.
mysql> desc employee;
+-----------+-------------+------+-----+---------+-------+
| Field     | Type        | Null | Key | Default | Extra |
+-----------+-------------+------+-----+---------+-------+
| emp_no    | varchar(15) | YES  |     | NULL    |       |
| emp_name  | varchar(20) | YES  |     | NULL    |       |
| dob       | date        | YES  |     | NULL    |       |
| address   | text        | YES  |     | NULL    |       |
| mobile_no | int         | YES  |     | NULL    |       |
| dept_no   | varchar(20) | YES  |     | NULL    |       |
| salary    | int         | YES  |     | NULL    |       |
+-----------+-------------+------+-----+---------+-------+
7 rows in set (0.00 sec)

mysql> desc department;
+-----------+-------------+------+-----+---------+-------+
| Field     | Type        | Null | Key | Default | Extra |
+-----------+-------------+------+-----+---------+-------+
| dept_no   | varchar(20) | YES  |     | NULL    |       |
| dept_name | varchar(20) | YES  |     | NULL    |       |
| location  | varchar(15) | YES  |     | NULL    |       |
+-----------+-------------+------+-----+---------+-------+
3 rows in set (0.00 sec)

6. Add a new column ‘Designation’ to the table Employee.
mysql> alter table employee add designation varchar(20);
Query OK, 0 rows affected (0.34 sec)
Records: 0  Duplicates: 0  Warnings: 0

7. Drop the column ‘location’ from Department table.
mysql> alter table department drop location;
Query OK, 0 rows affected (0.41 sec)
Records: 0  Duplicates: 0  Warnings: 0
