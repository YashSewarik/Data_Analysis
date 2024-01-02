/*
---------------------------------------------------------------------------------------------------------------------------------------------
 Chinook is a sample relational database often used for educational and demonstration purposes in the field of database management and SQL.
 This database is designed to represent a simplified digital media store.
 The Chinook database contains tables that model various aspects of a music store, such as customers,
 employees, invoices, tracks, albums, genres, and artists.
 The database allows users to explore relationships between entities, practice complex queries,
 and gain hands-on experience in managing data within a relational database environment.
 --------------------------------------------------------------------------------------------------------------------------------------------
 */

-- Query 1: Retrieve all information from the "Customers" table.

 SELECT *
 FROM CUSTOMER;

 --Query 2: List all unique genres from the "Tracks" table.

 SELECT T.NAME AS TRACKNAME,G.NAME AS "GENRE"
 FROM TRACK T
 JOIN GENRE G
	ON G.GenreId = T.GenreId;

-- Query 3: Count the total number of albums in the "Albums" table.

SELECT COUNT(DISTINCT ALBUMID) AS "COUNT"
FROM ALBUM;

--Query 4: Find the customer with the highest total purchase amount.

SELECT TOP 1 C.FIRSTNAME +' '+ C.LASTNAME AS NAME,I.TOTAL AS COST
FROM CUSTOMER C
JOIN INVOICE I
	ON I.CUSTOMERID = C.CustomerId
ORDER BY COST DESC;

-- Query 5: List all albums and their total sales.

