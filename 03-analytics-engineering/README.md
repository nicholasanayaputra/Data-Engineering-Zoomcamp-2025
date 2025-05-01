# NYC Taxi Trips Analytics – dbt + Postgres + Metabase

## Overview

This project is part of the Data Engineering Zoomcamp, Module 4: Analytics Engineering.  
The goal is to transform raw NYC taxi data into clean analytical models using **dbt Core** with **PostgreSQL** as the data warehouse and **Metabase** for visualization.

All development was done **locally**, following **Alternative B**: dbt Core with Postgres and Metabase using `metabase.jar`.

## Tech Stack

- **dbt Core** (local installation)
- **PostgreSQL** (running locally via Docker)
- **Metabase** (running locally via JAR file)
- **Docker** for environment isolation

## Project Structure

- `models/staging/`: Raw data cleaning and standardization
- `fact_trips.sql`: Combines Yellow and Green taxi trips with location dimensions
- `dim_zones.sql`: Dimension table for pickup/dropoff zones

## Data Sources

- Green Taxi Trips: 2019–2020
- Yellow Taxi Trips: 2019–2020
- FHV Trips: 2019

All data was ingested and cleaned in Week 3 pipelines and loaded into PostgreSQL.

---

## Visualizations (via Metabase)

### 1. **Top Drop-off Locations**
![Trip Count by Service Type]("https://github.com/user-attachments/assets/cce21f0f-2a11-48da-9b7e-9c0a5dc62948", width="500")

**Conclusion:**  
This donut chart visualizes the distribution of taxi trips in New York City for January 2019 based on the service type — Yellow and Green.

- The Yellow taxi service accounts for a significant majority of the trips, making up 86.5% of the total, with over 4 million trips.

- The Green taxi service only contributes to 13.5% of the total trips.

This shows that Yellow taxis were far more commonly used during this time period, which may reflect factors such as availability, service area coverage, or customer preference.

---

### 2. **Average Trip Distance by Service Type**
![Count by Dropoff Locationid]("https://github.com/user-attachments/assets/07764b77-8305-4d3c-b5c6-4f5ebc43ac7f", width="500")

## 🗺️ Drop-off Distribution Analysis

This analysis segments drop-off location IDs into bins of 50 and identifies the most common zones and boroughs within each range.

| Dropoff ID Range | Trip Count | Dominant Zone        | Dominant Borough |
|------------------|------------|-----------------------|------------------|
| 0–50             | 22         | Central Harlem        | Manhattan        |
| 50–100           | 23         | East Harlem North     | Manhattan        |
| 100–150          | 17         | Greenpoint            | Manhattan        |
| 150–200          | 17         | Park Slope            | Manhattan        |
| 200–250          | 19         | Sheepshead Bay        | Brooklyn         |
| 250–300          | 2          | Yorkville East        | Manhattan        |

### 📊 Conclusion

- The highest number of trips occurred in the 50–100 ID range, particularly in East Harlem North (Manhattan).
- Most drop-offs are concentrated in Manhattan, indicating high passenger activity.
- Brooklyn only appears once as a dominant borough (Sheepshead Bay).
- Yorkville East in Manhattan had the fewest drop-offs in this dataset.

---

### 3. **Total Revenue by Borough**
![Count by Revenue Month: Day of week]("https://github.com/user-attachments/assets/90f04701-0701-41e6-948b-072b0ea6887e", width="500")

## 🔍 Summary

- **Tuesday** has the highest number of trips (over 500).
- **Monday, Thursday, Friday, and Saturday** have moderate trip counts (around 50–100).
- **Sunday and Wednesday** show very low activity.

## 💡 Business Insight

- The spike on **Tuesday** could indicate peak demand or a **data anomaly**.
- Recommended actions:
  - ✅ Verify data for duplicates or incorrect labels.
  - ✅ If valid, consider allocating **more taxis on Tuesdays** or running **special promotions**.

---

## How to Run This Project Locally

### 1. Clone and Set Up
```bash
git clone <this-repo>
cd nyc-taxi-dbt
