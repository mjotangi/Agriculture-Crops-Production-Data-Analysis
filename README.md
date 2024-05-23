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

## **Data Preparation**

### **Creating a table**
<img width="1440" alt="image" src="https://github.com/mjotangi/Agriculture-Crops-Production-Data-Analysis/assets/146262756/59e722ad-6a3f-44a9-b584-4e22ed5e5643">

- Creates a table Production_Crops with columns to store various attributes.

### **Loading data into the table and view table**
<img width="1440" alt="image" src="https://github.com/mjotangi/Agriculture-Crops-Production-Data-Analysis/assets/146262756/b3ee0d74-6fce-4d46-8487-c6f04e65b249">

- Loads data from a CSV file and retrieves all the records

## **Data Cleaning**
<img width="1440" alt="image" src="https://github.com/mjotangi/Agriculture-Crops-Production-Data-Analysis/assets/146262756/3f002ef4-5f9a-40c8-b57e-474e9c7f025b">

- Identifies duplicate records by grouping all columns and selecting groups having more than one record.

- Alters the table by dropping the Domain column.

- Selects records where the Area field is null.

## **



