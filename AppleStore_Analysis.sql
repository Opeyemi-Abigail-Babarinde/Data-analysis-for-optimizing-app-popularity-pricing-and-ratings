CREATE TABLE appleStore_description_combined AS

SELECT * FROM appleStore_description1

UNION ALL

SELECT * FROM appleStore_description2

UNION ALL

SELECT * FROM appleStore_description3

UNION ALL

SELECT * FROM appleStore_description4

** EXPLORATORY DATA ANALYSIS **

-- check the number of unique apps

SELECT COUNT(DISTINCT id) AS UniqueAppsIDs
FROM AppleStore

SELECT COUNT(DISTINCT id) AS UniqueAppsIDs
FROM appleStore_description_combined

--check for any missing values in key fieldsAppleStore

SELECT COUNT (*) AS MissingValues
FROM AppleStore
WHERE track_name IS NULL OR user_rating is NULL

SELECT COUNT (*) AS MissingValues
FROM appleStore_description_combined
WHERE app_desc IS NULL 

-- find number of apps per genre
SELECT prime_genre, COUNT (*) as NumApps
FROM AppleStore
GROUP BY prime_genre
ORDER BY NumApps DESC

-- get an overview of the app ratings

SELECT max(user_rating) AS MaxRating,
       min(user_rating) as MinRating,
       avg(user_rating) as AvgRating
FROM AppleStore

**DATA ANALYSIS**

-- determine whether paid apps have higher ratings than free apps

SELECT case 
            WHEN price > 0 Then 'Paid'
            ELSE 'Free'
          eND AS App_Type,
          avg(user_rating) As Avg_Rating
FROM AppleStore
group by App_Type

-- check if apps with more supported langusges have higher ratings

SELECT CASE
           WHEN lang_num < 10 THEN '<10 languages'
           when lang_num BETWEEN 10 and 30 THEN '10-30 languages'
           else '>30 languages'
         end as language_bucket,
         avg(user_rating) AS Avg_Rating
from AppleStore
group by language_bucket
order by Avg_Rating desc 

-- check genre with low ratings

select prime_genre,
       avg(user_rating) as Avg_Rating
FROM AppleStore
GROUP by prime_genre
order by Avg_Rating ASC
LIMIT 10

-- check if there is correlation between the length of the app description and the user rating 

SELECT case 
           when length(B.app_desc) <100 THen 'Short'
           When length(B.app_desc) BETWEEN 500 and 1000 Then 'Medium'
           ELSE 'Long'
         End as description_length_bucket,
         avg(A.user_rating) AS average_rating
           
from 
     AppleStore as A
join 
     appleStore_description_combined as B      
on   
     A.id = B.id
group by description_length_bucket
ORDER BY average_rating DESC

-- check the top-rated apps for each genre

SELECT
      prime_genre,
      track_name,
      user_rating
from (
      SELECT 
      prime_genre,
      track_name,
      user_rating,
      RANK() OVER(PARTITION BY prime_genre ORDER BY user_rating DESC, rating_count_tot DESC) as rank
      from 
      appleStore
      ) AS a 
where 
a.rank = 1
      
