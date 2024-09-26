					Wisr Challenge

I have used Mage as an orchestration and ETL tool to load data into a MySQL database. For this challenge, I employed a multi-container Docker setup with Mage and MySQL running in separate containers. ERD in this repo as well in pdf format.

Because mage works in blocks in this challenge I have made use of two types of blocks the loader block (the one in blue) and the exporter block (the one in yellow).

The loader block which is written in python extracts the data from a csv file, and makes it temporarily available via the df_1 dataframe to the exporter block. The test_output function always makes sure that the df_1 data frame is not empty.

![screenshot1](./screenshots/loader_block.png)

The exporter block which is written in sql, first things first creates the table in which the data will be loaded, with schema definition (so accounting for foreign keys, data types and primary keys) and then inserts the data in the dataframe df_1 into the table.

I have specifed the schema for each of the tables in the export blocks with the sql query as can be seen for the departments_employee table in the screenshot below.

![screenshot1](./screenshots/depatment_employee%20export%20block.png)

To get started clone the repo: https://github.com/rahulmopkar1/wisr\_challenge.git

To run the containers run the following command:  
Docker compose up

After running this command it will take about a minute or two then you can go to the following link to access the docker container:

http://localhost:6789/

![screenshot1](./screenshots/first%20page%20and%20what%20to%20click%20on%20first%20page.png)

A screen similar to above will appear up.

Click on the icon circled in the above screenshot to access the pipeline. This will open up a screen similar to below:  

![screenshot2](./screenshots/click%20on%20pipeline%20wisr_challenge_pipeline.png)

Once here click on the pipeline wisr\_challenge\_pipeline, this will open up a screen similar to below:

![screenshot3](./screenshots/edit%20pipeline%20page.png)
On this screen, we can see all the blocks that will extract data from the CSV files in the data folder under the my\_project directory, and load the data into tables in the MySQL database running in the Docker container.

Because there is a fixed order of extracting and loading the data to take into consideration the relationships given these blocks will need to be executed in a specific order.

To do this look to your right, and execute all the blocks in the given tree order, to do this click on each block it will be highlighted on the right where blocks can be seen. 

For example in the screenshot above I had clicked on the block test\_connection and the block is highlighted on the right, over here click on the play button to run the block, execute the blocks in the following order:

![screenshot2](./screenshots/how%20to%20run%20a%20blok.png)

1. test\_connection  
2. load\_titles.  
3. export\_titles.  
4. departments.  
5. export\_departments.  
6. load\_employees.  
7. export\_employees.  
8. load\_department\_employees.  
9. export\_department\_employees.  
10. load\_department\_managers.  
11. export\_department\_managers.  
12. load\_salaries.  
13. export\_salaries.  
    

You can execute the rest of the blocks in any order these are answers to the questions mentioned in the challenge, the mage output will show only a few rows in the output with the actual number of rows and columns. To see all the rows you will need to download the output, this can be done by clicking on the save button at the bottom of the block.

[image1]: <data:image/png;base64,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>