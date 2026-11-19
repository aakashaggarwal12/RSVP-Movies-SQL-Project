# 🎬 Movie Database Analysis using MySQL

## 📌 Project Overview

This project focuses on designing and analyzing a relational movie database using MySQL.

The database stores information about movies, directors, movie-director relationships, and movie ratings.

SQL queries are used to retrieve insights related to movie releases, directors, ratings, genres, revenue, and profitability.

## 🎯 Project Objectives

- Design a relational database using MySQL.
- Create tables with Primary Keys and Foreign Keys.
- Establish relationships between multiple tables.
- Practice SQL JOIN operations.
- Perform data filtering and sorting.
- Use aggregate functions for data analysis.
- Calculate movie profits using revenue and budget.
- Extract meaningful insights using SQL queries.

## 🛠️ Technologies Used

- MySQL
- MySQL Workbench
- SQL

## 🗄️ Database Structure

**Database Name:** `rsvp`

The database consists of four tables:

| Table Name | Description |
|---|---|
| Movies | Stores movie information |
| Directors | Stores director information |
| Movie_Director | Connects movies with directors |
| Ratings | Stores movie ratings |

## 🔗 Database Relationships

- Movies → Movie_Director
- Directors → Movie_Director
- Movies → Ratings

The `Movie_Director` table connects movies and directors using Foreign Keys.

## 📊 SQL Concepts Implemented

### 1. Database & Table Creation
- CREATE DATABASE
- CREATE TABLE
- USE
- SHOW TABLES

### 2. Constraints
- PRIMARY KEY
- FOREIGN KEY

### 3. Data Manipulation
- INSERT INTO

### 4. Data Retrieval
- SELECT
- WHERE
- ORDER BY
- LIMIT
- Column Aliases

### 5. Aggregate Functions
- MAX()
- AVG()
- GROUP BY

### 6. SQL JOIN Operations
- INNER JOIN
- Multiple-table JOINs

### 7. Calculated Columns
- Revenue - Budget
- Total Profit Calculation

## 🔍 Analysis Performed

The project includes SQL queries to perform the following analysis:

1. Retrieve movies released after 2017.
2. Identify the movie with the highest revenue.
3. Find movies with ratings greater than 7.
4. Display movies along with their respective directors.
5. Calculate profit for each movie.
6. Calculate average ratings by movie genre.
7. Display the top 3 movies based on ratings.

## 📁 Project Structure

```text
Movie-Database-Analysis-MySQL/
│
├── rsvp.sql
│
└── README.md
```

## ⚙️ How to Run This Project

1. Download or clone this repository.
2. Open MySQL Workbench.
3. Open the `rsvp.sql` file.
4. Execute the SQL script.
5. The database and tables will be created automatically.
6. Run the queries to explore the results.

## 📚 Learning Outcomes

Through this project, I practiced:

- Creating relational databases.
- Understanding relationships between tables.
- Working with Primary and Foreign Keys.
- Writing SQL JOIN queries independently.
- Applying aggregate functions.
- Performing basic data analysis using MySQL.

## 👨‍💻 Author

**Aakash Aggarwal**

Aspiring Data Analyst

[LinkedIn](https://www.linkedin.com/in/aakash-aggarwal-6899b0391/)

[GitHub](https://github.com/aakashaggarwal12)
