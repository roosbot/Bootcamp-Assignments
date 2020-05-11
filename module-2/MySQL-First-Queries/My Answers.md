1. What are the different genres?
There are 23 generes:
Games
Productivity
Weather
Shopping
Reference
Finance
Music
Utilities
Travel
Social Networking
Sports
Business
Health & Fitness
Entertainment
Photo & Video
Navigation
Education
Lifestyle
Food & Drink
News
Book
Medical
Catalogs

2. Which is the genre with the most apps rated?
Games with 52878491 ratings

3. Which is the genre with most apps?
The genre Games has the most apps

4. Which is the one with least?
The genre Catalog has the least apps

5. Find the top 10 apps most rated.
Games	52878491
Entertainment	4030518
Education	1014371
Photo & Video	5008946
Utilities	1702228
Health & Fitness	1784371
Productivity	1433136
Social Networking	7598316
Lifestyle	887294
Music	3980199

6. Find the top 10 apps best rated by users.
Productivity	4.00561797752809
Music	3.9782608695652173
Photo & Video	3.8008595988538683
Business	3.745614035087719
Health & Fitness	3.7
Games	3.6850077679958573
Weather	3.5972222222222223
Shopping	3.540983606557377
Reference	3.453125
Travel	3.376543209876543

7. Take a look at the data you retrieved in question 5. Give some insights.
The most rated apps is Games by far, it has almost 50.000.000 more ratings than the 2nd most rated app (Entertainment) and 3rd (Education).

8. Take a look at the data you retrieved in question 6. Give some insights.
Productivity, Music and Photo and Video are the best rated app by users with ratings close or equal to 4

9. Now compare the data from questions 5 and 6. What do you see?
The most rated app (games) isn't rated as one of the best. Also the best rated apps are not the most used apps.

10. How could you take the top 3 regarding both user ratings and number of votes?
By looking at the average rating of the most downloaded apps

11. Do people care about the price of an app? Do some queries, comment why are you doing them and the results you retrieve. What is your conclusion?
I used the query from question 10 to see if Price has a relationship with Genre, TotalRating and AvgRating. 

The app where people are willing to pay the most is the Medical app with an average price of 8.78. Moreover, Business, Reference and Music are apps where the average price is around 5 USD. 


TotalRating and Price:
The top 4 most downloaded apps have a price ranging from 0.33 to 1.47. However, for Music apps the average price is 4.84. It seems that people do not seem to want to pay a lot for apps like Games, Social Networking, Photo & Video and Entertainment. For Music though, people seem to be willing to pay more. In contrary, people do not seem willing to pay for Shopping apps, as the average price is 0.016

AvgRating and Price:
For the best rated apps, people seem more willing to pay. The best rated app Productivity has an average rating of 4 and an average price of 4.33. The second best rated app is Music for wich the average rating is 3.97 and the average price 4.8. The third best app is Photo & Video, for which people seem less willing to pay, as the average is 1.47. The fourth best rated app is Fitness, where people are willing to pay 5.11. 

So my conclusion is:
For common apps such as Games, Social Networking, Photo & Video and Entertainment, people are less willing to pay. People are willing to pay more for apps that are less common, such as Medical, Business, Reference, Music and Productivity. There seems to be a relationship bbetween the average rating of the app and willingness to pay, but this needs further investigation.


---

# Question 1:
SELECT DISTINCT prime_genre
FROM app;

# Question 2:
SELECT prime_genre, sum(rating_count_tot) AS TotalRating
FROM app
GROUP BY prime_genre
ORDER BY count(*) DESC
LIMIT 1;

# Question 3:
SELECT prime_genre, count(*) AS records
FROM app
GROUP BY prime_genre
ORDER BY count(*) DESC;

# Question 4: 
SELECT prime_genre, count(*) AS records
FROM app
GROUP BY prime_genre
ORDER BY count(*) ASC;

# Question 5:
SELECT prime_genre, sum(rating_count_tot) AS TotalRating
FROM app
GROUP BY prime_genre
ORDER BY count(*) DESC
LIMIT 10;

# Question 6:
SELECT prime_genre, AVG(user_rating) AS AvgRating
FROM app
GROUP BY prime_genre
ORDER BY AvgRating DESC
LIMIT 10;

# Question 7:
# The most rated apps is Games by far, it has almost 50.000.000 more ratings than the 2nd most rated app (Entertainment) and 3rd (Education).

# Question 8:
# Productivity, Music and Photo and Video are the best rated app by users with ratings close or equal to 4

# Question 9:
# The most rated app (games) isn't rated as one of the best. Also the best rated apps are not the most used apps.

# Question 10:
SELECT prime_genre, sum(rating_count_tot) AS TotalRating, AVG(user_rating) AS AvgRating
FROM app
GROUP BY prime_genre
ORDER BY totalrating DESC
LIMIT 3;

# Question 11:
# Price
SELECT prime_genre, SUM(rating_count_tot) AS TotalRating, AVG(user_rating) AS AvgRating, AVG(price) AS AvgPrice
FROM app
GROUP BY prime_genre
ORDER BY AvgPrice DESC
LIMIT 10;

# TotalRating and Price:
SELECT prime_genre, sum(rating_count_tot) AS TotalRating, AVG(user_rating) AS AvgRating, AVG(price)
FROM app
GROUP BY prime_genre
ORDER BY totalrating DESC
LIMIT 10

#AvgRating and Price:
SELECT prime_genre, sum(rating_count_tot) AS TotalRating, AVG(user_rating) AS AvgRating, AVG(price)
FROM app
GROUP BY prime_genre
ORDER BY AvgRating DESC
LIMIT 10