# Growfinix Task 2 – IPL Sports Analytics

## 1. Project Overview

This project analyzes IPL match history using MySQL to extract performance insights for Kolkata Knight Riders (KKR).

The analysis focuses on KKR's historical performance across different stadiums.

---

## 2. Objective

The main objectives of this task are:

- Calculate KKR historical win rates across different stadiums.
- Calculate KKR average run rates across different stadiums.
- Use SQL JOIN operations to combine match and ball-by-ball data.
- Use GROUP BY for stadium-level analysis.
- Use Window Functions to rank stadiums based on KKR win rate.
- Identify stadiums where KKR has performed strongly.

---

## 3. Tools and Technologies

- MySQL 8.0
- SQL
- MySQL Command Line Client
- GitHub
- IPL Match Data
- IPL Ball-by-Ball Deliveries Data

---

## 4. Database

Database name:

`growfinix_task2`

Main tables used:

- `matches`
- `deliveries_raw`

The `matches` table contains IPL match-level information such as teams, venue, winner and match results.

The `deliveries_raw` table contains ball-by-ball information including batting team, runs, extras and match ID.

---

## 5. Data Preparation

The IPL match data was imported into MySQL.

Data cleaning was performed during the import process to handle:

- Blank values
- Date formats
- Numeric values stored as text
- Match IDs containing decimal notation
- Target runs containing additional over information
- Long result descriptions

The cleaned data was stored in the `matches` table.

---

## 6. KKR Win Rate Analysis

The analysis identifies matches in which Kolkata Knight Riders participated.

The following metrics were calculated for each stadium:

- Matches played
- Matches won
- Win rate percentage

The win rate was calculated using:

`Win Rate = (KKR Wins / Matches Played) × 100`

---

## 7. KKR Average Run Rate Analysis

Ball-by-ball delivery data was used to calculate KKR's batting performance.

The analysis calculates the total runs scored by KKR and considers valid deliveries to determine the average run rate.

The calculation is based on:

`Run Rate = Runs Scored / Valid Balls × 6`

This provides a stadium-level measure of KKR's scoring performance.

---

## 8. SQL JOIN

A JOIN was used to connect the match-level data with the ball-by-ball delivery data.

The relationship was established using the match ID.

Example:

```sql
JOIN deliveries_raw d
    ON CAST(m.id AS CHAR) = TRIM(d.match_id)
9. GROUP BY
GROUP BY venue was used to calculate performance metrics separately for each stadium.
This makes it possible to compare KKR's performance across different venues.
10. Window Function
The SQL RANK() window function was used to rank stadiums according to KKR's win rate.
Example:
RANK() OVER (
    ORDER BY win_rate_percentage DESC
) AS win_rate_rank
A lower rank indicates a higher KKR win rate.
11. Final Output
The final analysis produces the following columns:
Venue
Matches Played
Wins
Win Rate Percentage
Average Run Rate
Win Rate Rank
The final output was generated using MySQL and captured as a screenshot for documentation.
12. Key Findings
The analysis shows that KKR's performance varies across different stadiums.
Some venues have:
Higher KKR win rates
Higher average run rates
Stronger overall performance
The results can be used to identify stadiums where KKR has historically performed strongly.
13. Project Files
The GitHub repository contains:
README.md – Project overview and information
task2_analysis.sql – SQL source code used for the analysis
documentation.md – Detailed project documentation
task2_final_output.png – Screenshot of the final SQL output.
14. Conclusion
This project demonstrates the use of MySQL for sports analytics.
SQL techniques including:
SELECT
WHERE
JOIN
GROUP BY
Aggregate Functions
Common Table Expressions (CTEs)
Window Functions
were used to analyze KKR's historical performance across IPL stadiums.
The analysis provides insights into KKR's win rate and scoring performance at different venues.
