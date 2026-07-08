#  Student Management System

##  Project Overview

**Student Management System** is a MySQL database project designed to manage student information, subjects, and marks.

This project demonstrates database design, table relationships, stored procedures, data insertion, and SQL queries for student performance analysis.

---

#  Technologies Used

* MySQL
* MySQL Workbench
* SQL
* Git & GitHub

---

#  Database Information

## Database Name

```sql
Student_Management_System
```

---

#  Database Tables

## 1. Student Table

Stores student personal information.

| Column      | Description            |
| ----------- | ---------------------- |
| std_id      | Student unique ID      |
| std_name    | Student name           |
| std_gender  | Student gender         |
| std_contact | Student contact number |
| std_email   | Student email          |

---

## 2. Student Subject Table

Stores available subjects.

| Column   | Description  |
| -------- | ------------ |
| sub_id   | Subject ID   |
| sub_name | Subject name |

---

## 3. Student Marks Table

Stores student marks with subject relationship.

| Column  | Description              |
| ------- | ------------------------ |
| mark_id | Marks record ID          |
| std_id  | Student ID (Foreign Key) |
| sub_id  | Subject ID (Foreign Key) |
| mark    | Student marks            |

---

#  SQL Analysis Queries

###  1. Student Marks Report

###  2. Top 3 Students Performance

###  3. Student Count
---

#  Business Questions Answered

### 1. How many students are registered?

### 2. Which students have the highest marks?

### 3. What is the average performance of each student?

### 4. Which subjects are available?

### 5. What are student subject-wise marks?




