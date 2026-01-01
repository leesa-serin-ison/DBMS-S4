A. Consider the database for a college. Write SQL commands to implement the following:
1. Create a database
mysql> create database college1;
Query OK, 1 row affected (0.13 sec)

2. Select the current database
mysql> use college1;
Database changed

3. Create the following tables:
a) Student (roll_no integer, name varchar, dob date, address text,phone_no varchar, blood_grp varchar)
mysql> create table student(roll_no integer,name varchar(20),dob date,address text,phone_no varchar(10),blood_grp varchar(5));
Query OK, 0 rows affected (0.59 sec)

b) Course (Course_id integer, Course_name varchar, course_duration integer)
mysql> create table course(course_id integer,course_name varchar(20),course_duration integer);
Query OK, 0 rows affected (0.73 sec)

4. List all tables in the current database.
mysql> show tables;
+--------------------+
| Tables_in_college1 |
+--------------------+
| course             |
| student            |
+--------------------+
2 rows in set (0.00 sec)
  
5. Display the structure of the Student table.
mysql> desc student;
+-----------+-------------+------+-----+---------+-------+
| Field     | Type        | Null | Key | Default | Extra |
+-----------+-------------+------+-----+---------+-------+
| roll_no   | int         | YES  |     | NULL    |       |
| name      | varchar(20) | YES  |     | NULL    |       |
| dob       | date        | YES  |     | NULL    |       |
| address   | text        | YES  |     | NULL    |       |
| phone_no  | varchar(10) | YES  |     | NULL    |       |
| blood_grp | varchar(5)  | YES  |     | NULL    |       |
+-----------+-------------+------+-----+---------+-------+
6 rows in set (0.00 sec)
  
6. Drop the column blood_grp from Student table.
mysql> alter table student drop blood_grp;
Query OK, 0 rows affected (0.39 sec)
Records: 0  Duplicates: 0  Warnings: 0
  
7. Add a new column Adar_no with domain number to the table Student.
mysql> alter table student add Adar_no int;
Query OK, 0 rows affected (0.46 sec)
Records: 0  Duplicates: 0  Warnings: 0

8. Change the datatype of phone_no from varchar to int  
mysql> alter table student modify phone_no int;
Query OK, 0 rows affected (2.10 sec)
Records: 0  Duplicates: 0  Warnings: 0
  
9. Drop the tables.
mysql> drop table student;
Query OK, 0 rows affected (0.53 sec)
mysql> drop table course;
Query OK, 0 rows affected (0.55 sec)

10. Delete the database.
mysql> drop database college1;
Query OK, 0 rows affected (0.15 sec)
  
