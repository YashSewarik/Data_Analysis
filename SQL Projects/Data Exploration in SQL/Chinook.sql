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

-- Query 5: List all tracks and their total sales.

--TBC

--SELECT T.NAME
--FROM TRACK T
--JOIN InvoiceLine I
--	ON T.TrackId=I.TrackId;


-- Query 7: Retrieve a list of all invoices with customer details.

SELECT C.FIRSTNAME +' '+ C.LASTNAME AS NAME,C.Country,C.Email,I.InvoiceId,I.InvoiceDate
FROM Customer C
JOIN Invoice I
	ON I.CustomerId=C.CustomerId;

-- Query 8: List all tracks with their names, album titles, and artist names.

SELECT T.NAME AS TRACK,A.Title AS ALBUM,AA.Name AS ARTIST
FROM Track T
JOIN Album A
	ON A.AlbumId = T.AlbumId
JOIN Artist AA
	ON AA.ArtistId = A.AlbumId;

-- Query 9: Find the average invoice total for each country.

SELECT AVG(I.Total) AS AVERAGE,I.BillingCountry AS COUNTRY
FROM Invoice I
GROUP BY I.BillingCountry;

-- Query 10: Retrieve a list of albums along with the total number of tracks in each.

SELECT A.Title,T.AlbumId,COUNT(T.TrackId) AS 'NO OF TRACKS'
FROM TRACK T
JOIN ALBUM A
	ON A.AlbumId=T.AlbumId
GROUP BY T.AlbumId,A.Title;



