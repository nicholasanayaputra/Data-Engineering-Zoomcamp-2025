# Data Engineering Zoomcamp - Week 2: Workflow Orchestration with Kestra

## Overview
In Week 2 of the **Data Engineering Zoomcamp**, we focused on **workflow orchestration** using **Kestra**, an open-source, event-driven orchestration platform. The aim was to build **ETL pipelines** that are both scheduled and backfilled, orchestrating data flows efficiently in both local and cloud environments.

While the course uses **Google Cloud BigQuery** as the data warehouse, I’ve opted to use **Snowflake** for this project as my data warehouse solution.

---

## Steps and Key Components

### 1. **Introduction to Workflow Orchestration**
In this section, we explored the concept of workflow orchestration and its importance. Kestra simplifies the building of reliable workflows using just a few lines of YAML, and this introductory material set the stage for the rest of the project.

<img src="https://github.com/user-attachments/assets/27ab2c21-0fe2-4030-bffe-27b34e40511e" alt="Workflow Orchestration Concept" width="500" />

---

### 2. **Getting Started with PostgreSQL and Kestra**
To begin, I created a simple **PostgreSQL** database for the exercises. This initial step serves to demonstrate a simple data pipeline that extracts data via HTTP REST API, transforms it in Python, and queries the data using DuckDB. 

**Note**: Ensure **pgAdmin** is not running on the same ports as Kestra to avoid any conflicts. If so, please refer to the FAQ section in the README.

#### 2.1 **Create an ETL Pipeline with PostgreSQL in Kestra**
In this task, I built a basic ETL pipeline using **Kestra** and a **PostgreSQL** database. The pipeline extracts data, performs transformations, and loads it into PostgreSQL for further processing.

<img src="https://github.com/user-attachments/assets/c351b606-3cb0-4e53-b133-03ed31a26a11" alt="Workflow Orchestration Concept" width="500" />

#### 2.2 **Manage Scheduling and Backfills using PostgreSQL in Kestra**
Next, I focused on scheduling the pipeline to run daily and backfilling historical data. For this exercise, I backfilled only the **Green Taxi dataset** from 2019.
---

### 3. **Hands-On Coding Project: Building Data Pipelines with Kestra**
The hands-on part of this module focused on building **ETL pipelines** for the Yellow and Green Taxi data from NYC's **Taxi and Limousine Commission (TLC)**. 

While the course uses **BigQuery** as a data warehouse, I used **Snowflake** instead to load and manage the taxi data.

<img src="https://github.com/user-attachments/assets/415a3a6b-8ad1-4773-aa4a-3baaf6fdc2cf" alt="Workflow Orchestration Concept" width="500" />

#### 3.1 **Local DB: Load Taxi Data to Snowflake**
In this task, I extracted data from CSV files and loaded it into **Snowflake**. The steps were similar to the ones outlined in the course for BigQuery, but adapted for Snowflake's cloud-based architecture.

<img src="https://github.com/user-attachments/assets/09856f11-a9ba-4ca2-aa00-39190b8d2aa9" alt="Workflow Orchestration Concept" width="500" />

#### 3.2 **Scheduling and Backfilling Data**
This step involved scheduling the data pipeline to run daily and exploring how to backfill historical data. For this exercise, I backfilled only the **Green Taxi dataset** from 2019.

#### 3.3 **Orchestrating dbt Models (Optional)**
After loading the raw data into Snowflake, I used **dbt** to transform and build meaningful insights from the data. While dbt wasn't a primary focus of the course, I integrated it as an optional step to showcase how Kestra can manage dbt transformations.

---

### 4. **Transitioning to Google Cloud Platform (GCP)**
Though the course uses **GCP** (Google Cloud Platform) for cloud-based orchestration, I adapted the lessons to **Snowflake**. This step explored the orchestration of workflows on a cloud platform.

<img src="https://github.com/user-attachments/assets/b0dcf824-8e48-4f88-8317-4a755da1c09f" alt="Workflow Orchestration Concept" width="500" />

---

## Conclusion
This week provided hands-on experience with **workflow orchestration** using **Kestra**, alongside building ETL pipelines and orchestrating them with both **Snowflake** and **dbt**. I gained practical experience in scheduling, backfilling, and managing data pipelines, and I look forward to applying these skills in future tasks.

---

## Resources
- **Kestra Documentation**: [Kestra Docs](https://kestra.io/docs)
- **Snowflake Documentation**: [Snowflake Docs](https://docs.snowflake.com)
- **Postgres and Docker Setup**: [Docker Compose Example](image_url)
