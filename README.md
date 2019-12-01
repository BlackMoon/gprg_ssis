# gprg_ssis
MS SQL Server Integration Services packages

Projects:

1. Order_Product_Ssis
2. Order_Product_Lookup_Ssis
3. Weather_Data_Ssis

Each project consists of 2 packages: 

Package.dtsx - common package


Package_tuning.dtsx - package with performance improvement. 


It has another [defaultBufferMaxRows], [defaultBufferSize] values. Data Flow Step is modified as well.
