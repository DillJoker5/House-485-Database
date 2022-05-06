# House-485-Database
SQL Scripts for CSC 485 Capstone Project

# Description
This repository holds all of the database scripts for the [House-485-Website](https://github.com/DillJoker5/House-485-Website)

# Installation
You will need to install the following things before running this project:
* Please note that you will need to install and run both the [House-485-Website](https://github.com/DillJoker5/House-485-Website) and [House-485-Backend](https://github.com/DillJoker5/House-485-Backend) to fully use this database. Please see those installation guides for how to install them.
* Windows only: SQL Server
* Mac and Linux: ARM Docker Image
* Your preferred code editor for SQL

# Running
* Create a folder where you will store these scripts
* Clone the repository in the newly created folder
* Run the create database script
* Run all of the creation scripts
* Optional: Run all of the test scripts to verify everything is working correctly
* Windows only: Create a login in SQL Server
* Mac and Linux only: Create a login with azure sql edge
* All of the user's information for Windows, Mac, or Linux can be found [here](https://github.com/DillJoker5/House-485-Backend)
* Run Database locally (Will automatically be running on Windows)

# Tables and Code Examples
## House
    CREATE TABLE House (
        HouseId BIGINT IDENTITY(1,1) PRIMARY KEY,
        Price FLOAT NOT NULL,
        HouseLocation VARCHAR(200) NOT NULL,
        Distance FLOAT,
        UserId BIGINT FOREIGN KEY (UserId) REFERENCES Users(UserId)
    );

    INSERT INTO House
    VALUES (125000.99, '2520 Iris Ct', 122, 2),
    (250455.88, '8800 W Bluemound Rd', 267, 1)
## Users
    CREATE TABLE Users (
        UserId BIGINT IDENTITY(1,1) PRIMARY KEY,
        Username VARCHAR(100) NOT NULL,
        Name VARCHAR(100) NOT NULL,
        Password VARCHAR(100) NOT NULL
    );

    INSERT INTO Users
    VALUES ('Administrator', 'Admin', 'asdcvasdqwe123'),
    ('DTC101', 'Dylan Chirigotis', 'lovingTheBestest456'),
    ('AK4422', 'Anna Kuether', 'asdfblmasfj08123')
## Session
    CREATE TABLE Session (
        SessionId BIGINT IDENTITY(1,1) PRIMARY KEY,
        UserId BIGINT FOREIGN KEY REFERENCES Users(UserId),
        UserGuid VARCHAR(100),
        IsActive BIT
    )

    INSERT INTO Session
    VALUES (1, 'abcdegdhaspasb1234hasdas00029aklssfsofb', 1)