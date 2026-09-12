# Growfinix Task 2 – IPL Sports Analytics

## Project Overview

This project analyzes IPL match history using MySQL to extract performance insights for Kolkata Knight Riders (KKR).

## Objective

The main objectives of this project are:

- Calculate KKR historical win rates across different stadiums.
- Calculate KKR average run rates across different stadiums.
- Use SQL JOIN, GROUP BY and Window Functions.
- Identify stadiums where KKR has performed strongly.

## Tools Used

- MySQL
- SQL
- IPL Match Data
- IPL Ball-by-Ball Deliveries Data

## Database

Database Name: `growfinix_task2`

Main Tables:
- `matches`
- `deliveries_raw`

## Analysis Performed

### 1. KKR Win Rate by Stadium

The analysis calculates:

- Matches played
- Matches won by KKR
- Win percentage
- Stadium-wise performance

### 2. KKR Average Run Rate

Ball-by-ball delivery data is used to calculate KKR's average run rate at different stadiums.

### 3. SQL Techniques Used

- SELECT
- WHERE
- JOIN
- GROUP BY
- CASE
- Aggregate Functions
- CTE
- Window Functions
- RANK()

## Key Insights

The final analysis compares KKR's performance across different IPL stadiums using win rate and average run rate.

## Conclusion

This project demonstrates how SQL can be used to analyze sports data and identify historical team performance patterns.
