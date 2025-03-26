Enter password: *************
Welcome to the MySQL monitor.  Commands end with ; or \g.
Your MySQL connection id is 16
Server version: 8.0.39 MySQL Community Server - GPL

Copyright (c) 2000, 2024, Oracle and/or its affiliates.

Oracle is a registered trademark of Oracle Corporation and/or its
affiliates. Other names may be trademarks of their respective
owners.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

mysql> show database;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'database' at line 1
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
32 rows in set (0.20 sec)

mysql> create DATABASE company;
Query OK, 1 row affected (0.10 sec)

mysql> use company;
Database changed
mysql> CREATE TABLE departments (department_id INT PRIMARY KEY,department_name VARCHAR(50) NOT NULL);
Query OK, 0 rows affected (0.16 sec)

mysql> CREATE TABLE employees (employee_id INT PRIMARY KEY,employee_name VARCHAR(50) NOT NULL,department_id INT,FOREIGN KEY (department_id) REFERENCES departments(department_id));
Query OK, 0 rows affected (0.07 sec)

mysql> desc departments;
+-----------------+-------------+------+-----+---------+-------+
| Field           | Type        | Null | Key | Default | Extra |
+-----------------+-------------+------+-----+---------+-------+
| department_id   | int         | NO   | PRI | NULL    |       |
| department_name | varchar(50) | NO   |     | NULL    |       |
+-----------------+-------------+------+-----+---------+-------+
2 rows in set (0.04 sec)

mysql> desc employees;
+---------------+-------------+------+-----+---------+-------+
| Field         | Type        | Null | Key | Default | Extra |
+---------------+-------------+------+-----+---------+-------+
| employee_id   | int         | NO   | PRI | NULL    |       |
| employee_name | varchar(50) | NO   |     | NULL    |       |
| department_id | int         | YES  | MUL | NULL    |       |
+---------------+-------------+------+-----+---------+-------+
3 rows in set (0.01 sec)

mysql> INSERT INTO departments (department_id, department_name) VALUES(1, 'HR'),(2, 'IT'),(3, 'Finance');
Query OK, 3 rows affected (0.07 sec)
Records: 3  Duplicates: 0  Warnings: 0

mysql> select * from departments;
+---------------+-----------------+
| department_id | department_name |
+---------------+-----------------+
|             1 | HR              |
|             2 | IT              |
|             3 | Finance         |
+---------------+-----------------+
3 rows in set (0.05 sec)

mysql> INSERT INTO employees (employee_id, employee_name, department_id) VALUES(101, 'Alice', 1),(102, 'Bob', 2),(103, 'Charlie', 2),(104, 'David', 3),(105, 'Eve', NULL);
Query OK, 5 rows affected (0.06 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql> select * from employees;
+-------------+---------------+---------------+
| employee_id | employee_name | department_id |
+-------------+---------------+---------------+
|         101 | Alice         |             1 |
|         102 | Bob           |             2 |
|         103 | Charlie       |             2 |
|         104 | David         |             3 |
|         105 | Eve           |          NULL |
+-------------+---------------+---------------+
5 rows in set (0.05 sec)

mysql> SELECT e.employee_name, d.department_name FROM employees e INNER JOIN departments d ON e.department_id = d.department_id;
+---------------+-----------------+
| employee_name | department_name |
+---------------+-----------------+
| Alice         | HR              |
| Bob           | IT              |
| Charlie       | IT              |
| David         | Finance         |
+---------------+-----------------+
4 rows in set (0.00 sec)

mysql> SELECT e.employee_name, COALESCE(d.department_name, 'No Department') AS department_name FROM employees e LEFT JOIN departments d ON  e.department_id = d.department_id;
+---------------+-----------------+
| employee_name | department_name |
+---------------+-----------------+
| Alice         | HR              |
| Bob           | IT              |
| Charlie       | IT              |
| David         | Finance         |
| Eve           | No Department   |
+---------------+-----------------+
5 rows in set (0.01 sec)

mysql>