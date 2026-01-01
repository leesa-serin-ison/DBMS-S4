Experiment No: 2
Familiarization of SQL Constraints.


mysql> create database college2;
Query OK, 1 row affected (0.17 sec)

mysql> use college2;
Database changed
  
1. Create new table Persons with attributes PersonID (integer, PRIMARY KEY),
Name (varchar , NOT NULL), Aadhar (Number, NOT NULL, UNIQUE), Age(integer , CHECK>18).
mysql> create table persons(person_ID int primary key,name varchar(20),aadhar_no varchar(12) unique,age int check(age>18));
Query OK, 0 rows affected (0.76 sec)

2. CREATE TABLE Orders with attributes OrderID (PRIMARY KEY),OrderNumber(NOT NULL) and PersonID( set FOREIGN KEY on attribute PersonID referencing the column PersonId of Person table)
mysql> create table orders(orderID int primary key,order_no int,person_ID int,foreign key(person_ID) references persons(person_ID));
Query OK, 0 rows affected (0.73 sec)

3. Display the structure of Persons tables.
mysql> desc persons;
+-----------+-------------+------+-----+---------+-------+
| Field     | Type        | Null | Key | Default | Extra |
+-----------+-------------+------+-----+---------+-------+
| person_ID | int         | NO   | PRI | NULL    |       |
| name      | varchar(20) | YES  |     | NULL    |       |
| aadhar_no | varchar(12) | YES  | UNI | NULL    |       |
| age       | int         | YES  |     | NULL    |       |
+-----------+-------------+------+-----+---------+-------+
4 rows in set (0.01 sec)
  
4. Display the structure of Orders tables.
mysql> desc orders;
+-----------+------+------+-----+---------+-------+
| Field     | Type | Null | Key | Default | Extra |
+-----------+------+------+-----+---------+-------+
| orderID   | int  | NO   | PRI | NULL    |       |
| order_no  | int  | YES  |     | NULL    |       |
| person_ID | int  | YES  | MUL | NULL    |       |
+-----------+------+------+-----+---------+-------+
3 rows in set (0.01 sec)
  ---------
mysql> create table employee(emp_no varchar(15),emp_name varchar(20),dob date,address text,mobile_no integer,dept_no varchar(20),salary integer);
Query OK, 0 rows affected (1.02 sec)
  ----------

5. Add emp_no as the primary key of the table Employee.
mysql> alter table employee modify column emp_no varchar(15) primary key;
Query OK, 0 rows affected (1.59 sec)
Records: 0  Duplicates: 0  Warnings: 0
  ---------
 mysql> create table department(dept_no varchar(20),dept_name varchar(20),location varchar(15));
Query OK, 0 rows affected (1.30 sec)
  ---------
  
6. Add dept_no as the primary key of the table Department.
mysql> alter table department modify column dept_no varchar(20) primary key;
Query OK, 0 rows affected (1.68 sec)
Records: 0  Duplicates: 0  Warnings: 0

7. Add dept_no in Employee table as the foreign key reference to the table Department with on delete cascade.
mysql> alter table employee add constraint fr_dept_no foreign key(dept_no)references department(dept_no)on delete cascade;
Query OK, 0 rows affected (1.85 sec)
Records: 0  Duplicates: 0  Warnings: 0
  
8. Drop the primary key of the table Orders.
mysql> alter table orders drop primary key;
Query OK, 0 rows affected (2.01 sec)
Records: 0  Duplicates: 0  Warnings: 0
