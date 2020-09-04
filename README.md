# ETL_Project

Extract: your original data sources and how the data was formatted (CSV, JSON, pgAdmin 4, etc):  
  We searched sources including Kaggle and the world wide web and found CSV files to include in our database on potential factors influencing world happiness. Our main data file is the World Happiness Report as of 2017.  We also found sources with data showing alcohol consumption, literacy, intentional homicides, and number of libraries by country.


Transform: what data cleaning or transformation was required: All files required cleaning including renaming columns, deleting columns with unneccessary data and/or all NAN values, and manipulating dtypes as necessary.  The library file in particular required unique manipulation including using encoding=”ISO-8859-1” to read the CSV, replacing NAN values with 0's to be able to perform calculations, and performing a groupby to find the total number of libraries by country.
  

Load: the final database, tables/collections, and why this was chosen: Once all data was cleaned and documented in proper dataframes, we connected to Saburo's rds and transferred our dataframes to tables in postgresQL. In postgresQL, we performed a join to make a "Master Happiness" table with all factors listed. Worth noting, our joins worked best once we corrected all column names to be only in lowercase and have no spaces.
