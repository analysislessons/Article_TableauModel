# Tableau Multi-Table Data Model

This repository contains the resources for the "Building a Multi-Table Data Model in Tableau" lesson. It demonstrates how to transition from flat CSV files to a relational data model using either direct file imports or a PostgreSQL database.

## Repository Contents

### Data Sources (CSV)
Normalized tables used to build the relational model:
*   `traffic_violations.csv`: The central fact table containing violation events.
*   `drivers.csv`: Dimension table with driver details.
*   `cars.csv`: Dimension table with vehicle information.
*   `locations.csv`: Dimension table with geographic data.
*   `violation_details.csv`: Dimension table with penalty points and fine amounts.

### Database Resources
*   `postgresql_schema.sql`: SQL script to create the tables and load the CSV data into a PostgreSQL database.
*   `postgresql-42.7.10.jar`: The JDBC driver required for Tableau to connect to a PostgreSQL database.

### Tableau Files
*   `traffic_violations_model.twbx`: The final Tableau Packaged Workbook containing the completed data model and a verification worksheet.

## How to Use These Resources

### Option A: Using CSV Files
1. Open Tableau Desktop.
2. Connect to `traffic_violations.csv` as a Text File.
3. Add the other four CSV files and define the relationships (logical layer) as described in the lesson.

### Option B: Using PostgreSQL
1. Run the `postgresql_schema.sql` script in your PostgreSQL environment to set up the database.
2. Place the `postgresql-42.7.10.jar` driver in the appropriate Tableau drivers folder (e.g., `C:\Program Files\Tableau\Drivers` on Windows).
3. Connect Tableau to your PostgreSQL instance using the credentials defined during setup.

---
*For the full step-by-step tutorial, visit [Analysis Lessons](https://www.analysis-lessons.com).*
