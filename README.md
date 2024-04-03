# AtliQ_Mart
## Table of Contents
 - [Business Problem ](#business_problem)
 - [Data Used For Analysis](#data_used_for_analysis)
 - [Tools Used](#tools_used)
 - [Exploratory Data Analysis](#exploratory_data_analysis)
 - [Insights](#insights)

### Business Problem
AtliQ Mart is a retail giant with over 50 supermarkets in the southern region of India. All their 50 stores ran a massive promotion during the Diwali 2023 and Sankranti 2024 (festive time in India) on their AtliQ branded products. Now the sales director wants to understand which promotions did well and which did not so that they can make informed decisions for their next promotional period.

### Data Used For Analysis
1. dim_campaigns
2. dim_products
3. dim_stores
4. fact_events

### Tools Used
- MySQL - Ad-hoc Analysis
- Power BI - Creating Report

### Exploratory Data Analysis
1. Store Performance Analysis
  - Top 10 Stores in Terms of IR(incremental revenue) after promotions
  - Bottom 10 Stores in Terms of ISU(incremental sold units) after promotions
2. Promotion Type Analysis
  - Top 2 Promotions that resulted higher incremental revenue
  - Bottom 2 Promotions in terms of ISU(incremental sold units)
  - Which promotion types strikes the best balance between Incremental sold units and maintaining healthy margins.
3. Product and Category Analysis
  - Which Product categories are performing well after the promotions
  - Which Products are top selling after promotions
  - Wrost Performing products after promotions

### Insights
- Madurai Stores has shown highest incremental revenue which is 158% higher than renvenue before promotions.
- Banglore and Chennai has 154% incremental revenue after promotions
- The Top performing stores by IR are Selling High quantity of Home Appliances products and Botttom performing Stores are not able to sell large quanttity of Home Appliances products.
- BOGOF(Buy One Get One Free) is the top performing promotion type followed by 500 Chasback as the 2nd best performing Promotion type.
- BOGOF in these three categories (Grocery & Staples, Home Appliances, Home Care) is the best balance between incremenatal sold units and maintaining healthy margins.
- Combo 1 and Grocery& Staples has saw the most significant lift in Sales after the promotions.
- Atliq Curtains and Atliq double bedsheet set are top 2 selling products after promotions.
- Scrup Sponge and Fusion Container set of 3 are least selling products after promotions.
