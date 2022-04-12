# House-485-Database
SQL Scripts for CSC 485 Capstone Project

# Tables
## House
HouseId -- Bigint -- Primary Key <br>
Price -- Float -- Cannot be NULL <br>
HouseLocation -- Varchar of 200 -- Cannot be NULL <br>
Distance -- Float <br>
## User
UserId -- Bigint -- Primary Key <br>
Username -- Varchar of 100 -- Not NULL <br>
Name -- Varchar of 100 -- Not NULL <br>
Password -- Varchar of 100 -- Not NULL <br>
HouseId -- Bigint -- Foreign Key to HouseId of House
