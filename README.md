## Data Analysis For Optimizing App Popularity, Pricing and Ratings

### Introduction
This data analysis project aims to assist an app developer in identifying the most popular apps, determining optimal pricing strategies, and maximizing user ratings. By analyzing relevant data, we will provide actionable insights to guide the developer in selecting promising app ideas, setting competitive prices, and implementing effective strategies to enhance user satisfaction. The findings of this study will inform key decisions and contribute to the successful development and promotion of highly-rated applications.

### Data Source
The dataset utilized in this case study, was provided by Kaggle user RAMANATHAN. The first data set "AppleStore.csv" encompasses a comprehensive set of data for each app,including app names, sizing bytes, ratings, supporting device, supporting language. And the second set of files named "appleStore_description.csv" 1 through 4 contains an overview of each application description. These data points will serve as the foundation for my analysis.

### Tools Used
SQL

Excel

### Data Preparation
To streamline the analysis process, the four divided files of the "appleStore_description.csv" will be merged together in SQL using the UNION ALL command, as the initial step before conducting further analysis.

### Exploratory Data Analysis
In the exploratory data analysis phase several key steps were undertaken to gain insights from the dataset. Firstly, the number of unique apps in the dataset was examined to ensure consistency and avoid duplication between datasets.This step ensured that each application was represented only once for accurate analysis. Secondly, the presence of missing values in crucial fields within the AppleStore dataset was checked. By identifying and addressing any missing data, the integrity of subsequent analyses was preserved. Additionally, an assessment was made to determine the number of apps per genre, providing an overview of the distribution of applications across different categories. This analysis shed light on the popularity and diversity of genres within the dataset.

![NUMBER OF APPLICATION PER GENRE](https://github.com/Opeyemi-Abigail-Babarinde/Data-analysis-for-optimizing-app-popularity-pricing-and-ratings/assets/139285554/57684bd3-a461-469a-b7d6-51b635a375ab)

Finally, an overview of the app ratings was conducted. 

![OVERVIEW OF APP RATING](https://github.com/Opeyemi-Abigail-Babarinde/Data-analysis-for-optimizing-app-popularity-pricing-and-ratings/assets/139285554/3d7cac97-51d5-41af-928f-402dc63638c6)

This step allowed for an understanding of the overall rating distribution, enabling further investigation into factors contributing to high or low ratings. By systematically carrying out these exploratory data analysis steps, valuable insights were gained, setting the foundation for more in-depth analysis and informed decision-making.

### Data Analysis
In the data analysis phase, several steps were undertaken to gain insights and explore relationships within the dataset. Firstly, a comparison was made to determine whether paid apps have higher ratings than free apps. This analysis aimed to uncover any potential correlation between app pricing and user ratings.

![COMPARING RATINGS_ PAID VS FREE ](https://github.com/Opeyemi-Abigail-Babarinde/Data-analysis-for-optimizing-app-popularity-pricing-and-ratings/assets/139285554/32e8eacc-d70b-4e59-bd14-2ca0f76af397)

Secondly, an examination was conducted to check if apps with support for more languages tend to have higher ratings. This step aimed to explore the relationship between language support and user satisfaction. 

![INFLUENCE OF LANGAUGE QUANTITY ON RATING](https://github.com/Opeyemi-Abigail-Babarinde/Data-analysis-for-optimizing-app-popularity-pricing-and-ratings/assets/139285554/149fd025-8a17-4f93-9343-fe41d7db709c)

Additionally, the genre with low ratings was identified to understand specific categories that may require improvement or further investigation.

![LOWEST RATED GENRES RATING](https://github.com/Opeyemi-Abigail-Babarinde/Data-analysis-for-optimizing-app-popularity-pricing-and-ratings/assets/139285554/6e211b4e-da2e-40ef-8d3d-65b7b77d13ab)

Furthermore, a correlation analysis was performed to determine if there is a relationship between the length of the app description and the user rating. This investigation aimed to assess the impact of app description length on user perception and engagement. 

![RELATIONSHIP BETWEEN DESCRIPTION LENGTH AND RATING](https://github.com/Opeyemi-Abigail-Babarinde/Data-analysis-for-optimizing-app-popularity-pricing-and-ratings/assets/139285554/edff4524-b0b3-4fad-b6d2-9f7617b4129e)

Lastly, the top-rated apps for each genre were identified, providing valuable insights into the most highly regarded apps within different categories.

![HIGHEST RATED APP OF EACH GENRE (2)](https://github.com/Opeyemi-Abigail-Babarinde/Data-analysis-for-optimizing-app-popularity-pricing-and-ratings/assets/139285554/9067e635-7ad4-4942-8d58-e7883c4aa18d)

By carrying out these data analysis steps, meaningful patterns and associations were uncovered, enabling informed decision-making for app development and enhancement.

### Recommendations
Based on the data analysis conducted, the following recommendations can be made:

1. Pricing Strategy: Consider charging a certain amount for the app as paid apps generally receive better ratings. Users who invest in paid apps tend to have higher engagement levels and rate apps more favorably. This suggests that if the app is of good quality, it is advisable to monetize it.

2. Language Support: Focus on the quality rather than the quantity of supported languages. Apps supporting a moderate number of languages (between 10 to 30) received average ratings. Prioritize providing a high-quality experience in a select number of languages rather than attempting to support a large number of languages.

3. Market Opportunity: Explore opportunities in genres like finance and books, which were found to have low ratings. This indicates that user needs in these genres are not being fully met. Creating a better app that addresses these needs presents a potential market opportunity.

4. App Description: Longer app descriptions correlate positively with higher ratings. Users appreciate detailed information about the features and capabilities of an app. Ensure that app descriptions clearly communicate the value proposition and provide comprehensive information to attract and engage users.

5. Aim for Higher Ratings: On average, most apps have a rating of 3.5. To stand out from the competition, strive for a higher rating. Focus on delivering exceptional user experiences, soliciting user feedback, and continuously improving the app to achieve a higher rating and gain a competitive edge.

6. Games and Entertainment Market: Take into account that the games and entertainment genres have a high volume of apps, indicating a potentially saturated market. Breaking into these genres and standing out can be challenging. However, it also highlights a higher user demand, presenting an opportunity to tap into the market by offering unique and compelling experiences.

By implementing these recommendations, app developers can optimize their strategies, enhance user satisfaction, and increase the likelihood of success in the competitive app market.















