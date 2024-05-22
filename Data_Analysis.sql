#Data Loading
USE agriculture_production;

CREATE TABLE Production_Crops (
    Domain VARCHAR(100),
    Area VARCHAR(100),
    Element VARCHAR(100),
    Item VARCHAR(255),
    Year INT,
    Unit VARCHAR(100),
    Value INT,
    Flag VARCHAR(10),
    FlagDescription VARCHAR(255)
);

LOAD DATA INFILE '/Users/meghajotangiya/Desktop/Agriculture Production Project/FAOSTAT_data.csv'
INTO TABLE Production_Crops
FIELDS TERMINATED BY ',' ENCLOSED BY '"'
IGNORE 1 ROWS;

SELECT * FROM Production_Crops;


#Data Cleaning
#Find Duplicate Records
SELECT Domain,Area,Element,Item,Year,Unit,Value,Flag,FlagDescription
FROM Production_Crops
GROUP BY Domain,Area,Element,Item,Year,Unit,Value,Flag,FlagDescription
HAVING COUNT(*) > 1;

#Remove Column
ALTER TABLE Production_Crops
DROP COLUMN Domain;




#Exploratory Data Analysis
#A Row Count
SELECT COUNT(*) AS Total_rows FROM Production_Crops;

#A Column Count
SELECT count(*) as No_of_Columns FROM information_schema.columns WHERE table_name='Production_crops';

#To See Table
DESC Production_Crops;

#To Find Null Value
SELECT *
FROM Production_Crops
WHERE Area IS NULL;


#Which crops are exclusively produced in a single country?
#What is the overall production distribution of crops among the United States, Russia, India, China, and Brazil?
SELECT Item,
	SUM(CASE WHEN Area = 'United States of America' THEN 1 ELSE 0 END) AS UnitedStates,
    SUM(CASE WHEN Area = 'Russian Federation' THEN 1 ELSE 0 END) AS Russia,
    SUM(CASE WHEN Area = 'India' THEN 1 ELSE 0 END) AS India,
    SUM(CASE WHEN Area = 'China' THEN 1 ELSE 0 END) AS China,
    SUM(CASE WHEN Area = 'Brazil' THEN 1 ELSE 0 END) AS Brazil
FROM Production_Crops
WHERE Element = 'Production'
AND Flag = 'A'
GROUP BY Item
ORDER BY UnitedStates DESC;

#In the year 2022, what are the total values of production, area harvested, and yield, and which element holds the highest total value?
SELECT 
    Element,
    SUM(Value) AS TotalValue 
FROM 
    Production_Crops 
WHERE 
    Year = 2022 
    AND Flag = 'A'
    AND Element IN ('Production', 'Area harvested', 'Yield')
GROUP BY 
    Element
ORDER BY 
	TotalValue Desc;

#What are the top 10 crops produced, harvested, and yielded in the year 2022?
WITH MostProduced AS (
    SELECT
        Item AS MostProducedItem,
        SUM(Value) AS ProducedValue,
        ROW_NUMBER() OVER (ORDER BY SUM(Value) DESC) AS RowNum
    FROM
        Production_Crops
    WHERE
        Element = 'Production'
        AND Year = '2022'
        AND Flag = 'A'
    GROUP BY
        Item
    ORDER BY
        ProducedValue DESC
    LIMIT 10
),
MostHarvested AS (
    SELECT
        Item AS MostHarvestedItem,
        SUM(Value) AS HarvestedValue,
        ROW_NUMBER() OVER (ORDER BY SUM(Value) DESC) AS RowNum
    FROM
        Production_Crops
    WHERE
        Element = 'Area Harvested'
        AND Year = '2022'
        AND Flag = 'A'
    GROUP BY
        Item
    ORDER BY
        HarvestedValue DESC
    LIMIT 10
),
MostYielded AS (
    SELECT
        Item AS MostYieldedItem,
        SUM(Value) AS YieldValue,
        ROW_NUMBER() OVER (ORDER BY SUM(Value) DESC) AS RowNum
    FROM
        Production_Crops
    WHERE
        Element = 'Yield'
        AND Year = '2022'
        AND Flag = 'A'
    GROUP BY
        Item
    ORDER BY
        YieldValue DESC
    LIMIT 10
)
SELECT
    p.MostProducedItem,
    p.ProducedValue,
    h.MostHarvestedItem,
    h.HarvestedValue,
    y.MostYieldedItem,
    y.YieldValue
FROM
    MostProduced p
LEFT JOIN MostHarvested h ON p.RowNum = h.RowNum
LEFT JOIN MostYielded y ON p.RowNum = y.RowNum;


#How has maize production, area harvested, and yield varied over the years?
#In which years did maize production, area harvested, and yield reach their peak?
#Are there any noticeable trends or patterns in maize production, area harvested, and yield over the years?
SELECT
    Year,
    SUM(CASE WHEN Element = 'Production' THEN Value ELSE 0 END) AS Production,
    SUM(CASE WHEN Element = 'Area harvested' THEN Value ELSE 0 END) AS AreaHarvested,
    SUM(CASE WHEN Element = 'Yield' THEN Value ELSE 0 END) AS Yield
FROM 
    Production_Crops 
WHERE 
    Year BETWEEN 1961 AND 2022
    AND Flag = 'A'
    AND Element IN ('Production', 'Area harvested', 'Yield')
    AND Item = 'Maize (corn)'
GROUP BY 
    Year
ORDER BY 
    Production DESC;
    
SELECT DISTINCT Area FROM Production_Crops;
    


#How has maize production varied over time in the United States, Russia, India, China, and Brazil?
#Which country has consistently produced the most maize over the specified period?
#What were the peak production years for maize in each of the listed countries?
#How does maize production in Brazil compare to that in other countries over the specified period?
#Are there any significant trends or patterns in maize production across the listed countries over the years?
SELECT
    Year,
    SUM(CASE WHEN Area = 'United States of America' THEN Value ELSE 0 END) AS UnitedStates,
    SUM(CASE WHEN Area = 'Russian Federation' THEN Value ELSE 0 END) AS Russia,
    SUM(CASE WHEN Area = 'India' THEN Value ELSE 0 END) AS India,
    SUM(CASE WHEN Area = 'China' THEN Value ELSE 0 END) AS China,
    SUM(CASE WHEN Area = 'Brazil' THEN Value ELSE 0 END) AS Brazil
FROM 
    Production_Crops 
WHERE 
    Year BETWEEN 1961 AND 2022
    AND Flag IN ('A','E')
    AND Element = 'Production'
    AND Item = 'Maize (corn)'
GROUP BY 
    Year
ORDER BY 
    Year;
    

#How much maize (corn) did the United States produce each year?
#What percentage of the total global maize production does the United States contribute each year?
#How has the United States' share of global maize production fluctuated over the years?
#Are there any notable trends or patterns in the United States' maize production relative to the global production?
SELECT
    year,
    SUM(CASE WHEN Area = 'United States of America' THEN Value ELSE 0 END) AS united_states_production,
    (SUM(CASE WHEN Area = 'United States of America' THEN Value ELSE 0 END) * 100.0) / 
    (SELECT 
		SUM(Value)
		FROM Production_Crops 
		WHERE 
			Year = PC.year
			AND Item = 'Maize (corn)' 
			AND Element='Production'
			AND Flag='A') AS percentage_of_total
FROM Production_Crops PC
WHERE
    Item = 'Maize (corn)'
    AND Flag = 'A'
    AND Element = 'Production'
GROUP BY year
ORDER BY united_states_production DESC;


#What is the year with the highest production for each item?
SELECT Item,
       Year,
       MaxProduction
FROM (
    SELECT Item,
           Year,
           SUM(CASE WHEN Element = 'Production' THEN Value ELSE 0 END) AS MaxProduction,
           ROW_NUMBER() OVER (PARTITION BY Item ORDER BY SUM(CASE WHEN Element = 'Production' THEN Value ELSE 0 END) DESC) AS row_num
    FROM Production_Crops
    WHERE Flag='A'
    GROUP BY Item, Year
) AS ranked
WHERE row_num = 1;


    




    










    
    





