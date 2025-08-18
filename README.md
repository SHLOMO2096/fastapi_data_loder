# Loading a table from a mysql server and displaying it in a browser

## Overview
This project implements a simple FastAPI-based service that connects to a MySQL database and provides product data via REST API endpoints.

- **data_loder**: This file defines the DataLoder class, which connects to the MySQL database (products) and retrieves all records from the names table.
- **main**: This file defines the FastAPI application, including a primary checkpoint (/) that returns a message, and an additional route (/namse) that returns the list of products using the DataLoder class.
We will keep only the relevant columns, delete unnecessary characters, and lowercase all letters.


---

## Project Structure

```
data-loader/
├── services/
│ └── data_loader/ # Data loading service
├── scripts/ # SQL scripts, OS scripts
├── infrastructure/
│ └── k8s/ # Kubernetes manifests (YAMLs)
├── Dockerfile
├── requirements.txt
└── README.md

```

---