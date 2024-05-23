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

1. Which crops are exclusively produced in a single country? or What is the overall production distribution of crops among the United States, Russia, India, China, and Brazil?
<img width="1440" alt="image" src="https://github.com/mjotangi/Agriculture-Crops-Production-Data-Analysis/assets/146262756/43b39a7f-c168-4553-acdc-d5a2e1fc04d4">

2. In the year 2022, what are the total values of production, area harvested, and yield, and which element holds the highest total value?
<img width="1440" alt="image" src="https://github.com/mjotangi/Agriculture-Crops-Production-Data-Analysis/assets/146262756/14154910-4757-49ae-b0f5-7d1d95484536">

3. What are the top 10 crops produced, harvested, and yielded in the year 2022?
<img width="1440" alt="image" src="https://github.com/mjotangi/Agriculture-Crops-Production-Data-Analysis/assets/146262756/8962307f-34cc-441a-8cc4-e858bf475978">







