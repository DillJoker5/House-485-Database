# House-485-Database
SQL Scripts for CSC 485 Capstone Project

# Tables
## House
HouseId : Bigint : PK
Price : Float : Cannot be NULL
HouseLocation : Varchar of 200 : Cannot be NULL
Distance : Float
ReviewId : Bigint : FK to ReviewId of Review
## Review
ReviewId : Bigint : PK
NameOfUser : Varchar of 200 : Cannot be NULL
Description : Varchar of 200
HouseId : Bigint : FK to HouseId of House
## User
