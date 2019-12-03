# gprg_ssis
MS SQL Server Integration Services packages

######Projects:

1. Order_Product_Ssis
2. Order_Product_Lookup_Ssis
3. Weather_Data_Ssis




Each project consists of 2 packages:

Package.dtsx - common package

Package_tuning.dtsx - package with performance improvement.

Package_tuning.dtsx has another [defaultBufferMaxRows], [defaultBufferSize] values. Data Flow Task is modified as well.

All projects use 2 Project Level Parameters: Source_ConnectionString and Destination_ConnectionString




######Projects:

**Order_Product_Ssis**

- Package which  selects all Order and Product Information and Joins them to create one summary table.
- Package_tuning has [defaultBufferMaxRows] = 200000 and [defaultBufferSize]= 50485760. Total row count per task ~121K,
thus defaultBufferMaxRows should be a bit bigger to allow handle all data per one reading operation. It has modified Data Flow Task to reduce Data Flow steps and fetch as much data as possible from DB.


**Weather_Data_Ssis**

- Package that copies the data from dbo.weatherdata and transforms sunset/sunrise values
- Package_tuning has modified Data Flow Task, e.g. DateTime Transformation completely goes from Source SQL query


**Order_Product_Lookup_Ssis**

 - Package that utilises at least one component of each the following types
Blocking -  Sort              
Semi Blocking - Merge
Non Blocking - Derived Column, Lookup,   OLE DB Command
- Package_tuning has [defaultBufferMaxRows] = 200000 and [defaultBufferSize]= 50485760  and modified Data Flow Task to reduce Data Flow steps

One more option to improve performance - Use of SQL Server Destination in a data flow task as it uses TCP/IP and named pipes.
But, SQL Server Destination requires that Users who execute packages must have “Create global objects” permission from the Local security policy which is not required in OLE DB Destination.

