--Create new database to manage new data source, if needed
--create database DEVOPS_DEMODB;

--use database we created
use DEVOPS_DEMODB;

--Create schema to manage new data set
create schema new_dataset;

--switch to the new DB and Schema namespace
use DEVOPS_DEMODB.new_dataset;

describe database DEVOPS_DEMODB;

--Create table to hold CSV data

create or replace TABLE LINEITEM (
	L_ORDERKEY NUMBER(38,0) NOT NULL,
	L_PRODUCTKEY NUMBER(38,0) NOT NULL,
	L_SUPPKEY NUMBER(38,0) NOT NULL,
	L_LINENUMBER NUMBER(38,0) NOT NULL,
	L_QUANTITY NUMBER(12,2) NOT NULL,
	L_EXTENDEDPRICE NUMBER(12,2) NOT NULL,
	L_DISCOUNT NUMBER(12,2) NOT NULL,
	L_TAX NUMBER(12,2) NOT NULL,
	L_RETURNFLAG VARCHAR(1) NOT NULL,
	L_LINESTATUS VARCHAR(1) NOT NULL,
	L_ORDERDATE DATE NOT NULL,
	L_COMMITDATE DATE NOT NULL,
	L_RECEIPTDATE DATE NOT NULL,
	L_SHIPINSTRUCT VARCHAR(25) NOT NULL,
	L_SHIPMODE VARCHAR(10) NOT NULL,
	L_COMMENT VARCHAR(44) NOT NULL
);

--load data from the incoming new data set stage
