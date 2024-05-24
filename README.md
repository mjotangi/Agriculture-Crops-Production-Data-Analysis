# Agriculture-Crop-Production-Data-Analysis

## **Objective**

To analyze agricultural production data in order to uncover insights into crop production patterns, identify trends over time, and compare agricultural outputs among major crop-producing countries.

Please visit the live tableau dashboard by clicking on the link to fully experience the filters.https://public.tableau.com/views/AgricultureProduction_17158934723780/Dashboard1?:language=en-US&:sid=&:display_count=n&:origin=viz_share_link

![image](https://github.com/mjotangi/Agriculture-Crops-Production-Data-Analysis/assets/146262756/491d100e-0da2-4936-9ee8-2576c73b4b79)

## **Data Source**

The data utilized in this analysis is obtained from FAOSTAT, a comprehensive database provided by the Food and Agriculture Organization (FAO) of the United Nations. The dataset contains information on crops, production quantities, harvested areas, and yields spanning several decades., production quantities, harvested areas, and yields spanning several decades.

## **Data Dictionary**

The dataset contains the following columns:
- Domain: The domain of the data that was removed during data cleaning.
- Area: The country where the data was collected.
- Element: The type of data (e.g., production, area harvested, yield).
- Item: The crop or item being measured.
- Year: The year of the data.
- Unit: The unit of measurement for the data.
- Value: The numerical value of the data.
- Flag: Indicators for data quality and status.
- Flag Description: Descriptions of the flags.

## **Data Loading**

### **Creating a table**
<img width="1440" alt="image" src="https://github.com/mjotangi/Agriculture-Crops-Production-Data-Analysis/assets/146262756/59e722ad-6a3f-44a9-b584-4e22ed5e5643">

- Creates a table Production_Crops with columns to store various attributes.

### **Loading data into the table and view table**
<img width="1440" alt="image" src="https://github.com/mjotangi/Agriculture-Crops-Production-Data-Analysis/assets/146262756/b3ee0d74-6fce-4d46-8487-c6f04e65b249">

- Loads data from a CSV file and retrieves all the records

## **Data Preprocessing**
<img width="1440" alt="image" src="https://github.com/mjotangi/Agriculture-Crops-Production-Data-Analysis/assets/146262756/3f002ef4-5f9a-40c8-b57e-474e9c7f025b">

- Identifies duplicate records by grouping all columns and selecting groups having more than one record.

- Alters the table by dropping the Domain column.

- Selects records where the Area field is null.

## **Data Exploration**
<img width="1440" alt="image" src="https://github.com/mjotangi/Agriculture-Crops-Production-Data-Analysis/assets/146262756/696d52eb-57f2-4834-b9b9-224412322229">

- Calculates the total number of rows and columns in the dataset.
  
- Describes the structure of the Production_Crops table, providing information about its columns and data types.

## **Data Analysis**

2. In the year 2022, what are the total values of production, area harvested, and yield, and which element holds the highest total value?

<img width="1000" alt="image" src="https://github.com/mjotangi/Agriculture-Crops-Production-Data-Analysis/assets/146262756/14154910-4757-49ae-b0f5-7d1d95484536">


3. What are the top 10 crops produced, harvested, and yielded in the year 2022?

<img width="1000" alt="image" src="https://github.com/mjotangi/Agriculture-Crops-Production-Data-Analysis/assets/146262756/8962307f-34cc-441a-8cc4-e858bf475978">


4. How has maize production, area harvested, and yield varied over the years? or In which years did maize production, area harvested, and yield reach their peak? or Are there any noticeable trends or patterns in maize production, area harvested, and yield over the years?

<img width="1000" alt="image" src="https://github.com/mjotangi/Agriculture-Crops-Production-Data-Analysis/assets/146262756/c9e670d8-d15e-4192-a75c-de064d668299">


5. How has maize production varied over time in the United States, Russia, India, China, and Brazil? or Which country has consistently produced the most maize over the specified period? or What were the peak production years for maize in each of the listed countries?

<img width="1440" alt="image" src="https://github.com/mjotangi/Agriculture-Crops-Production-Data-Analysis/assets/146262756/2d16ec25-5c23-47ff-90f3-bd29092f9975">

6. How much maize (corn) did the United States produce each year? or What percentage of the total global maize production does the United States contribute each year? or How has the United States' share of global maize production fluctuated over the years? or Are there any notable trends or patterns in the United States' maize production relative to the global production?

<img width="1440" alt="image" src="https://github.com/mjotangi/Agriculture-Crops-Production-Data-Analysis/assets/146262756/0012ef72-b1a1-4a1c-a8e4-fca48085afd3">

7. What is the year with the highest production for each item?

<img width="1440" alt="image" src="https://github.com/mjotangi/Agriculture-Crops-Production-Data-Analysis/assets/146262756/cc0c9acd-d180-425b-b9c7-6d44ab57e588">

## **Findings**

- Sugar cane is the most produced crop, with production increasing from 200 million tonnes in 1961 to 1195 million in 2022. Brazil has been the leading producer since 1982, surpassing India, accounting for 60% of the total production 2022.

- In 2022, wheat was the second most harvested crop, with more than 75 million hectares. Asian countries are the largest producers, with almost 60 million hectares of harvest area. Russia’s most produced and harvested crop is wheat. 

- In 2022, corn was the second most produced crop. However, its production was 300 million tonnes less than the previous year. The United States harvested almost 50% of its area and became the largest producer, accounting for approx 70% of the total production.

- In 2022, soya beans were the most harvested crops, with over 90 million hectares. Meanwhile, the soya bean is the second most harvested and produced crop in the United States, lacking Brazil by only 4% of total production.

- In the United States, corn has been the most produced crop since 1961. The highest amount of corn was produced in 2016, with over 400 million tonnes, accounting for more than 50% of the total production.











