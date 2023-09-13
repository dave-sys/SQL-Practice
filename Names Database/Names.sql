-- Basic use of SQL to do data manipulation
-- SQLite

---Load all fields
SELECT *
FROM NationalNames
;

---Find the Sum() for all Marys
SELECT *, Sum(Count) AS Total_Mary
FROM NationalNames
WHERE Name = "Mary" 
;

---Find the least picked names between 1881 and 1889
SELECT *
FROM NationalNames
WHERE Year BETWEEN 1881 AND 1889
    AND Count < 10
;

---Find the 5 least popular name that starts with "A" and is in 1880
SELECT *
FROM NationalNames
WHERE Year = 1880
    AND Count < 100
    AND Name LIKE "A%"
ORDER BY Count ASC
LIMIT 5
;

---Find the total highest name for both male and female
SELECT Name, Sum(Count)
FROM NationalNames
GROUP BY Gender
;


---Find the most popular names that have a higher count than 1000
SELECT DISTINCT Name, Gender, SUM(Count) AS Total
FROM NationalNames
WHERE Count > 1000
GROUP BY Name
ORDER bY Name ASC
;

---Find the highest name counts for each year
SELECT DISTINCT Year, Name, Gender, Max(Count)
FROM NationalNames
GROUP BY Year
ORDER BY Year ASC
;

---Find the highest name count for both gender for each year
SELECT Year, Name, Gender, Max(Count)
FROM NationalNames
GROUP BY Year, Gender
ORDER BY Year
;

---Checking for Correction
SELECT Year, Name, Gender, Max(Count)
FROM NationalNames
WHERE Gender = "F" 
GROUP BY Year 
;
