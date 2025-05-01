# 📦 Week 1 - Setting Up Local Development Environment and Ingesting Data into PostgreSQL on AWS

This week focused on establishing a strong foundation for the data engineering project by containerizing the workflow and using **Amazon Web Services (AWS)** infrastructure instead of **Google Cloud Platform (GCP)** as shown in the course.

---

## ✅ Topics Covered

### 🐳 Docker Basics & Data Pipeline Setup
- Learned how to use **Docker** to run services in isolated containers.
- Created a basic ingestion pipeline that loads NYC Taxi data into a **PostgreSQL** database.

### 🛢️ PostgreSQL in Docker & Data Ingestion
- Deployed **PostgreSQL** in a Docker container and connected using `pgcli`.
- Ingested the **NYC Green Taxi dataset** into the database using a **parameterized Python script**.

### 🧭 pgAdmin and Docker Networking
- Utilized **pgAdmin** for managing and monitoring the database.
- Explored Docker networking for enabling container communication.

### 🔧 Dockerizing the Ingestion Script
- Converted the original Jupyter ETL notebook to a standalone Python script.
- Used `argparse` to parameterize and Dockerize the script for flexibility and portability.

### 🧱 Docker-Compose Setup
- Created a multi-container environment using **docker-compose**.
- Defined services like PostgreSQL and pgAdmin in a single `docker-compose.yml` file.

### 🧮 SQL Refresher & Data Quality Checks
- Reviewed SQL fundamentals including **joins**, **aggregates**, and **group by** operations.
- Created a `zones` reference table and performed **basic data quality checks**.

### ☁️ AWS Infrastructure (Replaces GCP from Course)
- Deployed and configured an **AWS EC2 instance** to simulate a cloud environment.
- All components were executed remotely on AWS for cloud-based development.

---

## 🛠️ Tools & Technologies Used

| Tool            | Purpose                                      |
|-----------------|----------------------------------------------|
| **AWS EC2**     | Remote compute environment                   |
| **Docker**      | Containerized services                       |
| **Docker Compose** | Multi-container orchestration              |
| **PostgreSQL**  | Relational database                          |
| **pgAdmin 4**   | PostgreSQL GUI and admin tool                |
| **Python & argparse** | ETL scripting and parameterization     |
| **NYC Taxi Dataset** | Source data for ingestion and analysis |
| **GitHub**      | Version control and collaboration            |

---

> 📝 *This week was focused on replicating a local data engineering environment with cloud deployment using AWS. It provided hands-on experience in containerization, ingestion, database management, and data quality validation.*

