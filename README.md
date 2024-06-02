Documentation Library Management System

Project Architecture
Database:
MySQL Database
Tables:
Books: Stores information about the books.
Members: Stores information about the library members.
Borrowing: Stores records of books borrowed by members.
Queries:
To inquire about borrowing records through DBMS techniques.
Scripts:
Backup Script: Shell script for taking regular backups
Restore Script: Shell script for restoring the database from a backup
Version Control:
GitHub: To have all the versions and take the necessary steps.

Developer Guidelines
Database Design:
Use proper indexing to optimise query performance.
Ensure data integrity with appropriate constraints, like foreign keys.
Documentation:
Maintain an up-to-date README file with project details.
Provide comments and explanations for complex logic.

Deployment Guidelines
Server Setup:
Choose a cloud provider such as AWS, Azure, Google Cloud, or a hosting service.
Set up a virtual server with the necessary software (MySQL).
Environment Configuration:
Use environment variables for configuration settings.
Store sensitive information, such as database credentials, securely.
Database:
Set up the MySQL database on the server.
Run the schema creation scripts to set up the database tables.
Import initial data using data import scripts.
Technology Used
MySql
For Local server(Xampp)

Features:
Can update the database about stock, availability and other features.
Can Delete, Insert a new record of borrowing or books or member registration.
Can do queries about book, borrow record, monthly reports and other members most read book.

ER Diagram:
























Database Schema Explanation:

With the first command, create database will create a database named LibraryManagement.
Secondly, we will create table named books, members and borrowing using the command CREATE TABLE and then the desired table name. We will assign some attributes with proper data types per the instructions.
Here, int represents the data type, which will store integer values.
Primary Key means This column uniquely identifies each record in the table.
VARCHAR(255) indicates the data type, which means it will store variable-length character strings up to 255 characters.
NOT NULL defines that this column must have a value and cannot be left empty.




Maintenance Routines:
Regular maintenance tasks must be performed to ensure the smooth operation and performance of the Library Management Database System. These tasks include updating statistics, rebuilding indexes, and checking the integrity of the database.
Use the ANALYZE TABLE command to update the statistics for each table, which helps the query optimizer make better decisions.
Use the OPTIMIZE TABLE command to rebuild indexes and reclaim unused space.
Implement a routine to archive or delete old borrowing records after a certain period.

Backup/Recovery Procedures:
Use the mysqldump utility to create regular backups of the database through shell.
Schedule the backup script to run daily using cron.
Here is what the backup script should be:


 Identify the backup file to be used for restoration.
Run the restore script with the chosen backup file.
Verify the restoration by checking the data in the database.

