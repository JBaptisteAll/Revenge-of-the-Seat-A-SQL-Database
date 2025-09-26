<h1 align="center">Revenge of the Seat: An SQL Database</h1> 


![Logo](https://github.com/JBaptisteAll/Revenge-of-the-Seat-An-SQL-Database/blob/main/Assets/logo.png)

## 📌 Introduction

Revenge of the Seat is a realistic airline simulation database project designed to explore data modeling, SQL querying, and data analytics in a complete end-to-end workflow. It contains real-world inspired data on aircrafts, flights, passengers, bookings, airports, and airlines.

---

## 📚 Background

This project was built as part of a personal portfolio to practice complex SQL operations, relational data modeling, and data analysis within the aviation industry. The design mirrors how real airline data systems are structured, enabling hands-on experience with scalable, queryable data.

---

## 🧱 Database Schema

The database consists of six core tables:

| Table | Description |
|-------|-------------|
| `aircraft` | Stores technical and commercial details about each aircraft. |
| `airlines` | Contains data about each airline company (name, HQ, employees, etc). |
| `airports` | Includes global airport data (location, size, capacity). |
| `passenger` | Stores passenger demographics and status (Frequent Flyer, etc). |
| `flights` | Central fact table listing individual flights, delay info, revenue, etc. |
| `passenger_flights` | Join table linking passengers to booked flights, with seat and class info. |

Each table is connected using foreign keys, enforcing referential integrity.

![Merise](https://github.com/JBaptisteAll/Revenge-of-the-Seat-An-SQL-Database/blob/main/Assets/Merise.png)
---

## 🧪 Data Generation

All data was custom generated to simulate realistic distributions:

| Table               | # of Rows |
|---------------------|-----------|
| `aircraft`          | 19        |
| `airlines`          | 11        |
| `airports`          | 32        |
| `passenger`         | 100,007   |
| `passenger_flights` | 700,008   |
| `flights`           | 25,001    |

- Passengers have an average of 7 flight records.
- 7% of check-in statuses are `No Show`, 5% `Cancelled`.
- All data were generated to simulate a broad network of routes and operational scenarios.

---

## 🛠️ Tools Used

- **SQL Server Management Studio (SSMS)** – to manage database structure and execute scripts.
- **Visual Studio Code (VS Code)** – for SQL scripting and formatting.
- **mssql extension** – to connect VS Code directly to SQL Server.

---

## 📌 SQL Use Cases

This dataset allows for a variety of advanced SQL queries:

```sql
-- Most frequent flyers
SELECT TOP 10 p.first_name, p.last_name, COUNT(*) AS flights_taken
FROM passenger_flights pf
JOIN passenger p ON p.passenger_id = pf.passenger_id
GROUP BY p.first_name, p.last_name
ORDER BY flights_taken DESC;
```

```sql
-- Revenue per airline
SELECT f.airline_code, a.airline_name, SUM(f.revenue) AS total_revenue
FROM flights f
JOIN airlines a ON f.airline_code = a.airline_code
GROUP BY f.airline_code, a.airline_name
ORDER BY total_revenue DESC;
```

---

## 🔍 Insights

With this dataset, we can explore:

- Flight punctuality and delay patterns
- Passenger segmentation and loyalty

- Ticket pricing per class and route
- Aircraft utilization by airline
- Geographic traffic across airports

---

## 📈 What I Learned

- Designing normalized relational schemas
- Writing clean, scalable SQL scripts

- Managing referential integrity and data constraints
- Performing analytical queries on large datasets

---

## ✅ How to Use

1. Run the table creation script (`CREATE TABLE aircraft_evo.sql`)
2. Add constraints (`CONSTRAINTS.sql`)
3. Import all `*_insert.sql` files in order: 
(`aircraft`, `airlines`, `airports`, `passenger`, `flights`, `passenger_flights`)
4. Start querying!

---

## 🔮 Final Notes

This dataset contains many interesting cases and even a few subtle surprises. Some flights are not exactly what they seem, and one specific flight might look... oddly familiar.


Explore carefully. 😉

![Tip](https://img.shields.io/badge/Tip-**199999-%F0%9F%9A%80)

---

Designed by JB as part of a portfolio to demonstrate SQL and data engineering skills —  may the data be with you.

---
