# Production Data Pipeline (SQL-Based)

This project simulates a production-level data validation and analytics pipeline for a manufacturing environment.

## Overview

The system models:

- Products with weight thresholds
- Production batches
- Individual measurements
- Validation logic (OK / UNDER / OVER / MISSING)
- Defect rate aggregations per product

---

## Project Structure

sql/
- schema.sql → Database schema definition
- seed_data.sql → Realistic production seed data
- validation_queries.sql → Row-level validation logic
- aggregations.sql → Product-level defect analytics

---

## Key Features

- Data modeling with foreign keys
- Validation using CASE logic
- Business-rule classification
- Aggregations with defect rate calculation
- Production-style query structure

---

##  Purpose

This project demonstrates:
- SQL for data engineering
- Data validation logic
- Analytical KPI computation
- Structured repository organization
- Production-thinking approach to quality monitoring

---

##  Next Steps (Planned Improvements)

- Add indexing strategy
- Add constraints for data quality
- Simulate larger datasets
- Connect to Python (ETL simulation)
- Add automated SQL tests
