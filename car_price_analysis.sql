
USE car_price_analysis;
SELECT * FROM car_price_analysis.car_price_dataset;

-- Question 1: Average Price by Brand
-- Query: Calculate the average price for each car brand.

SELECT Brand, ROUND(AVG(Price), 2) AS Average_Price
FROM car_price_dataset
GROUP BY Brand
ORDER BY Average_Price DESC;

-- Question 2: Most Common Fuel Type
-- Query: Identify the distribution of fuel types in the dataset.

SELECT Fuel_Type, COUNT(*) AS Total_Cars
FROM car_price_dataset
GROUP BY Fuel_Type
ORDER BY Total_Cars DESC;

-- Question 3: Top 5 Expensive Models
-- Query: List the top 5 most expensive car models (brand + model) and their prices.

SELECT Brand, Model, MAX(Price) AS Max_Price
FROM car_price_dataset
GROUP BY Brand, Model
ORDER BY Max_Price DESC
LIMIT 5;

-- Question 4: Price vs. Mileage Correlation
-- Query: Find the average price for cars with mileage above and below 100,000 miles.

SELECT 
    CASE 
        WHEN Mileage > 100000 THEN 'High Mileage'
        ELSE 'Low Mileage'
    END AS Mileage_Category,
    ROUND(AVG(Price), 2) AS Average_Price
FROM car_price_dataset
GROUP BY Mileage_Category;

-- Question 5: New vs. Older Cars
-- Query: Compare the average price of cars manufactured after 2020 to older cars (≤ 2020).

SELECT 
    CASE 
        WHEN Year > 2020
        THEN 'New (After 2020)'
        ELSE 'Older (2020 or Earlier)'
    END AS Age_Category,
    ROUND(AVG(Price), 2) AS Average_Price
FROM car_price_dataset
GROUP BY Age_Category;

-- Question 6: Transmission Preference
-- Query: Determine the most popular transmission type and its average price.

SELECT Transmission, COUNT(*) AS Total_Cars, 
ROUND(AVG(Price), 2) AS Average_Price
FROM car_price_dataset
GROUP BY Transmission
ORDER BY Total_Cars DESC;

-- Question 7: Impact of Ownership on Price
-- Query: Analyze how the number of previous owners affects the average price.

SELECT Owner_Count, ROUND(AVG(Price), 2) AS Average_Price
FROM car_price_dataset
GROUP BY Owner_Count
ORDER BY Owner_Count;

-- Question 8: Doors vs. Price
-- Query: Calculate the average price based on the number of doors.

SELECT Doors, ROUND(AVG(Price), 2) AS Average_Price
FROM car_price_dataset
GROUP BY Doors
ORDER BY Doors;











