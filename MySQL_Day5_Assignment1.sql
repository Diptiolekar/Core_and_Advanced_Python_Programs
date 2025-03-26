Enter password: *************
Welcome to the MySQL monitor.  Commands end with ; or \g.
Your MySQL connection id is 15
Server version: 8.0.39 MySQL Community Server - GPL

Copyright (c) 2000, 2024, Oracle and/or its affiliates.

Oracle is a registered trademark of Oracle Corporation and/or its
affiliates. Other names may be trademarks of their respective
owners.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

mysql> CREATE DATABASE college_management;
ERROR 1007 (HY000): Can't create database 'college_management'; database exists
mysql> delete DATABASE college_management;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'DATABASE college_management' at line 1
mysql> delete college_management;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '' at line 1
mysql> DROP DATABASE college_management;
Query OK, 2 rows affected (0.17 sec)

mysql> SELECT * FROM Student;
ERROR 1046 (3D000): No database selected
mysql> show databases;
+-------------------------+
| Database                |
+-------------------------+
| built_in                |
| college_db              |
| constraints_db          |
| cte_db                  |
| customer                |
| customer_db             |
| data_type_db            |
| ddl_db                  |
| dipti                   |
| dml_db                  |
| employee_db             |
| groupby_db              |
| index_db                |
| indexdb                 |
| information_schema      |
| infosys                 |
| join_db                 |
| my_project              |
| mydb                    |
| mysql                   |
| performance_schema      |
| pizza_sales_analysis    |
| pizzahut                |
| python_db               |
| sakila                  |
| set_db                  |
| social_media            |
| studentmanagementsystem |
| sys                     |
| tata_db                 |
| winfun_db               |
| world                   |
+-------------------------+
32 rows in set (0.07 sec)

mysql> use college_db;
Database changed
mysql> show tables;
+----------------------+
| Tables_in_college_db |
+----------------------+
| child                |
| customer             |
| student              |
+----------------------+
3 rows in set (0.01 sec)

mysql> SELECT * FROM Student;
+----------+----------+-------+
| roll_num | stu_name | marks |
+----------+----------+-------+
|       11 | Dipti    |    90 |
|       12 | Ashu     | 86.34 |
|       14 | Sarthak  | 86.43 |
+----------+----------+-------+
3 rows in set (0.07 sec)

mysql> drop TABLE Student;
Query OK, 0 rows affected (0.04 sec)

mysql> show tables;
+----------------------+
| Tables_in_college_db |
+----------------------+
| child                |
| customer             |
+----------------------+
2 rows in set (0.00 sec)

mysql> CREATE TABLE Student (ID INT PRIMARY KEY,Firstname VARCHAR(50),Lastname VARCHAR(50),Gender VARCHAR(10),Age INT,Address VARCHAR(50),PhoneNo VARCHAR(10));
Query OK, 0 rows affected (0.12 sec)

mysql> INSERT INTO Student (ID, Firstname, Lastname, Gender, Age, Address, PhoneNo) VALUES (1, 'ashu', 'olekar', 'Male', 20, 'pune', '1234567890'),(2, 'Dipti', 'olekar', 'Female', 22, 'sangli', '9309039068'),(3,'sakshi', 'Jadhav', 'Female', 21, 'satara', '1122334455'),(4, 'Bob', 'Brown', 'Male', 23, 'kolhapur', '5566778899'));
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near ')' at line 1
mysql> INSERT INTO Student (ID, Firstname, Lastname, Gender, Age, Address, PhoneNo) VALUES (1, 'Ashu', 'Olekar', 'Male', 20, 'Pune', '1234567890'),(2, 'Dipti', 'Olekar', 'Female', 22, 'Sangli', '9309039068'),(3, 'Sakshi', 'Jadhav', 'Female', 21, 'Satara', '1122334455'),(4, 'Bob', 'Brown', 'Male', 23, 'Kolhapur', '5566778899');
Query OK, 4 rows affected (0.08 sec)
Records: 4  Duplicates: 0  Warnings: 0

mysql> SELECT * FROM Student;
+----+-----------+----------+--------+------+----------+------------+
| ID | Firstname | Lastname | Gender | Age  | Address  | PhoneNo    |
+----+-----------+----------+--------+------+----------+------------+
|  1 | Ashu      | Olekar   | Male   |   20 | Pune     | 1234567890 |
|  2 | Dipti     | Olekar   | Female |   22 | Sangli   | 9309039068 |
|  3 | Sakshi    | Jadhav   | Female |   21 | Satara   | 1122334455 |
|  4 | Bob       | Brown    | Male   |   23 | Kolhapur | 5566778899 |
+----+-----------+----------+--------+------+----------+------------+
4 rows in set (0.00 sec)

mysql> SELECT * FROM Student ORDER BY Lastname ASC;
+----+-----------+----------+--------+------+----------+------------+
| ID | Firstname | Lastname | Gender | Age  | Address  | PhoneNo    |
+----+-----------+----------+--------+------+----------+------------+
|  4 | Bob       | Brown    | Male   |   23 | Kolhapur | 5566778899 |
|  3 | Sakshi    | Jadhav   | Female |   21 | Satara   | 1122334455 |
|  1 | Ashu      | Olekar   | Male   |   20 | Pune     | 1234567890 |
|  2 | Dipti     | Olekar   | Female |   22 | Sangli   | 9309039068 |
+----+-----------+----------+--------+------+----------+------------+
4 rows in set (0.05 sec)

mysql> SELECT gender, COUNT(*) AS student_count FROM Student GROUP BY gender;
+--------+---------------+
| gender | student_count |
+--------+---------------+
| Male   |             2 |
| Female |             2 |
+--------+---------------+
2 rows in set (0.06 sec)

mysql>