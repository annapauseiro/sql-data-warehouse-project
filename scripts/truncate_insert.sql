/* Creating SQL DDL scripts for ALL CSV files in the CRM and ERP sys. */

TRUNCATE TABLE bronze.crm_cust_info;
BULK INSERT bronze.crm_cust_info
FROM 'C:\Users\apauseir\OneDrive - Cisco\Documents\Pessoal\Data Engineer\SQL\sql-data-warehouse-project\datasets\source_crm\cust_info.csv'
WITH (
	FIRSTROW = 2,
	FIELDTERMINATOR = ',',
	TABLOCK
);

TRUNCATE TABLE bronze.crm_prd_info;
BULK INSERT bronze.crm_prd_info
FROM 'C:\Users\apauseir\OneDrive - Cisco\Documents\Pessoal\Data Engineer\SQL\sql-data-warehouse-project\datasets\source_crm\prd_info.csv'
WITH (
	FIRSTROW = 2,
	FIELDTERMINATOR = ',',
	TABLOCK
);

TRUNCATE TABLE bronze.crm_sales_details;
BULK INSERT bronze.crm_sales_details
FROM 'C:\Users\apauseir\OneDrive - Cisco\Documents\Pessoal\Data Engineer\SQL\sql-data-warehouse-project\datasets\source_crm\sales_details.csv'
WITH (
	FIRSTROW = 2,
	FIELDTERMINATOR = ',',
	TABLOCK
);

TRUNCATE TABLE bronze.erp_cust_az12;
BULK INSERT bronze.erp_cust_az12
FROM 'C:\Users\apauseir\OneDrive - Cisco\Documents\Pessoal\Data Engineer\SQL\sql-data-warehouse-project\datasets\source_erp\CUST_AZ12.csv'
WITH (
	FIRSTROW = 2,
	FIELDTERMINATOR = ',',
	TABLOCK
);

TRUNCATE TABLE bronze.erp_loc_a101;
BULK INSERT bronze.erp_loc_a101
FROM 'C:\Users\apauseir\OneDrive - Cisco\Documents\Pessoal\Data Engineer\SQL\sql-data-warehouse-project\datasets\source_erp\LOC_A101.csv'
WITH (
	FIRSTROW = 2,
	FIELDTERMINATOR = ',',
	TABLOCK
);

TRUNCATE TABLE bronze.erp_px_cat_g1v2;
BULK INSERT bronze.erp_px_cat_g1v2
FROM 'C:\Users\apauseir\OneDrive - Cisco\Documents\Pessoal\Data Engineer\SQL\sql-data-warehouse-project\datasets\source_erp\PX_CAT_G1V2.csv'
WITH (
	FIRSTROW = 2,
	FIELDTERMINATOR = ',',
	TABLOCK
)


/* Quality check: check that the data has not shifted and is in the correct columns and number of rows.*/

SELECT * FROM bronze.crm_cust_info
SELECT COUNT (*) FROM bronze.crm_cust_info;

SELECT * FROM bronze.crm_prd_info
SELECT COUNT (*) FROM bronze.crm_prd_info;

SELECT * FROM bronze.crm_sales_details
SELECT COUNT (*) FROM bronze.crm_sales_details;

SELECT * FROM bronze.erp_cust_az12
SELECT COUNT (*) FROM bronze.erp_cust_az12;

SELECT * FROM bronze.erp_loc_a101
SELECT COUNT (*) FROM bronze.erp_loc_a101;

SELECT * FROM bronze.erp_px_cat_g1v2
SELECT COUNT (*) FROM bronze.erp_px_cat_g1v2
