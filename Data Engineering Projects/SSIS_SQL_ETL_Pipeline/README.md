# SSIS SQL ETL Pipeline
A basic ETL (Extract, Transform, Load) implementation using SQL Server Integration Services (SSIS) to demonstrate data movement from flat files to SQL Server database.

## Introduction
This project showcases a fundamental SSIS package implementation following a tutorial-based approach. It covers the essentials of data extraction from flat files, transformation using lookups, and loading into SQL Server.

## Project Architecture
The project utilizes the following components:
* SQL Server Integration Services (SSIS)
* SQL Server Management Studio (SSMS)
* Flat File Source
* Lookup Transformations
* OLE DB Destination

Data flows through the following stages:
1. **Source**: Flat file data source
2. **Transformation**: Lookup transformations for data processing
3. **Destination**: SQL Server database tables

## Technologies Used
* SQL Server Integration Services (SSIS)
* SQL Server Management Studio (SSMS)
* Visual Studio with SSIS extensions
* SQL Server Database


## Implementation Steps
### Lesson 1: Basic Package Creation and Configuration
1. Project Setup
   * Created new Integration Services project
   * Basic project configuration
2. Connection Configuration
   * Flat File connection manager setup
   * OLE DB connection manager configuration
3. Data Flow Implementation
   * Added Data Flow task
   * Configured Flat File source
   * Implemented Lookup transformations
   * Set up OLE DB destination
4. Documentation and Testing
   * Package annotations
   * Layout formatting
   * Package testing

## Pipeline Execution Results
### Pipeline Execution Flow
![ETL Pipeline](Screenshots/ETL_Pipeline.png)

### Data Validation
#### Before Pipeline Execution
![Database table state before running the ETL pipeline](Screenshots/ss_before_data_load.png)

#### After Pipeline Execution
![Database table state after successful ETL process, showing the newly loaded data](Screenshots/ss_after_data_load.png)

## Setup Instructions
### Prerequisites
* Visual Studio with SSIS extensions
* SQL Server 2019 or later
* SQL Server Management Studio (SSMS)

### Database Setup
1. Open SQL Server Management Studio
2. Restore database from backup folder
3. Verify table structures

### Package Configuration
1. Configure connection managers
2. Update file paths
3. Verify mappings

### Execution Steps
1. Open the project in Visual Studio
2. Configure necessary connections
3. Execute the SSIS package
4. Validate data in destination database

## Future Enhancements
* Add error handling mechanisms
* Implement logging framework
* Add performance optimizations
* Include more complex transformations

## Tutorial Steps Covered
1. Create a project and basic package with SSIS
   * Create new Integration Services project
   * Add and configure Flat File connection manager
   * Add and configure OLE DB connection manager
   * Add Data Flow task
   * Configure Flat File source
   * Implement Lookup transformations
   * Configure OLE DB destination
   * Add annotations and formatting
   * Test package execution

## Contributors
* Rohit Annasaheb Ragde

## Credits
This project was created following the SSIS tutorial for learning ETL concepts and implementation: https://learn.microsoft.com/en-us/sql/integration-services/lesson-1-create-a-project-and-basic-package-with-ssis?view=sql-server-ver16
