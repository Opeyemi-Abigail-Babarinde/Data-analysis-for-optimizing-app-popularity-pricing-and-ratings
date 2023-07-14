## Data Analysis For Optimizing App Popularity, Pricing and Ratings

### Introduction
This data analysis project aims to assist an app developer in identifying the most popular apps, determining optimal pricing strategies, and maximizing user ratings. By analyzing relevant data, we will provide actionable insights to guide the developer in selecting promising app ideas, setting competitive prices, and implementing effective strategies to enhance user satisfaction. The findings of this study will inform key decisions and contribute to the successful development and promotion of highly-rated applications.

### Data Source
The dataset utilized in this case study, was provided by Kaggle user RAMANATHAN. The first data set "AppleStore.csv" encompasses a comprehensive set of data for each app,including app names, sizing bytes, ratings, supporting device, supporting language. And the second set of files named "appleStore_description.csv" 1 through 4 contains an overview of each application description. These data points will serve as the foundation for my analysis.

### Tools Used
SQL
Tableau

### Data Preparation
To streamline the analysis process, the four divided files of the "appleStore_description.csv" will be merged together in SQL using the UNION ALL command, as the initial step before conducting further analysis.

CREATE TABLE appleStore_description_combined AS

SELECT * FROM appleStore_description1

UNION ALL

SELECT * FROM appleStore_description2

UNION ALL

SELECT * FROM appleStore_description3

UNION ALL

SELECT * FROM appleStore_description4


### Exploratory Data Analysis
I started out this analysis by checking for the number of unique apps in the dataset to ensure 




