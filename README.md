# ETL_Project

EXTRACT: your original data sources and how the data was formatted (CSV, JSON, pgAdmin 4, etc):  

We searched sources including Kaggle and the world wide web and found CSV files to include in our database on potential factors influencing world happiness. Our main data file is the World Happiness Report as of 2017.  We also found sources with data showing alcohol consumption, literacy, intentional homicides, and number of libraries by country.


TRANSFORM: what data cleaning or transformation was required: 

All files required cleaning including renaming columns, deleting columns with unneccessary data and/or all NAN values, and manipulating dtypes as necessary (for example: object to float).  The library file in particular required unique manipulation including using encoding=”ISO-8859-1” to read the CSV, replacing NAN values with 0's to be able to perform calculations, and performing a groupby to find the total number of libraries by country. We also filtered the library data to only include rows with libraries data; we did not need to keep the information regarding staff , internet access, or users. Worth noting, our joins worked best in postgresQL once we corrected all column names to be only in lowercase and have no spaces (we used underscores instead).
  

LOAD: the final database, tables/collections, and why this was chosen: 

Once all data was cleaned and documented in proper dataframes, we connected to Saburo's rds and transferred our dataframes to tables in postgresQL. We chose to use RDS for the additional challenge and because it would be easiest for us to share our tables in the cloud as opposed to one team member needing to run all code on their specific drive/computer. This also gave all team members access to the data at anytime. We chose a relationship database to be able to join the different tables with one query (master_happiness.sql) to display all data pulled for the project. 
