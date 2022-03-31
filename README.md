# House-485-Database
SQL Scripts for CSC 485 Capstone Project

# Tables
## House
HouseId : Bigint : Primary Key <br>
Price : Float : Cannot be NULL <br>
HouseLocation : Varchar of 200 : Cannot be NULL <br>
Distance : Float <br>
ReviewId : Bigint : Foreign Key to ReviewId of Review
## Review
ReviewId : Bigint : Primary Key <br>
NameOfUser : Varchar of 200 : Cannot be NULL <br>
Description : Varchar of 200 <br>
HouseId : Bigint : Foreign Key to HouseId of House
## User
