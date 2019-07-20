--Clone database for development purposes
create or replace database devops_demodb_DEVELOPMENT clone devops_demodb;

--Switch to newly created DEVELOPMENT database
use devops_demodb_DEVELOPMENT.new_dataset;

use warehouse se_wh;

--********Begin Development code section************

--Create new tables previously not found in the primary database

--1. Create first new table
create or replace TABLE CUSTOMER (
	C_CUSTKEY NUMBER(38,0) NOT NULL,
	C_NAME VARCHAR(25) NOT NULL,
	C_ADDRESS VARCHAR(40) NOT NULL,
	C_NATIONKEY NUMBER(38,0) NOT NULL,
	C_PHONE VARCHAR(15) NOT NULL,
	C_ACCTBAL NUMBER(12,2) NOT NULL,
	C_MKTSEGMENT VARCHAR(10),
	C_COMMENT VARCHAR(117)
);

--2. Create second new table, and copy dev data into it
create or replace TABLE NATION (
	N_NATIONKEY NUMBER(38,0) NOT NULL,
	N_NAME VARCHAR(25) NOT NULL,
	N_REGIONKEY NUMBER(38,0) NOT NULL,
	N_COMMENT VARCHAR(152)
);

copy into nation from @devops_demodb.public.nation_data;

--3. Alter nation table add column "country_code"
alter table nation add column country_code varchar(2);

--4. Populate the table with the country code
begin transaction;
update nation set country_code = 'DZ' where n_name = 'ALGERIA';
update nation set country_code = 'AR' where n_name = 'ARGENTINA';
update nation set country_code = 'BR' where n_name = 'BRAZIL';
update nation set country_code = 'CA' where n_name = 'CANADA';
update nation set country_code = 'EG' where n_name = 'EGYPT';
update nation set country_code = 'ET' where n_name = 'ETHIOPIA';
update nation set country_code = 'FR' where n_name = 'FRANCE';
update nation set country_code = 'DE' where n_name = 'GERMANY';
update nation set country_code = 'IN' where n_name = 'INDIA';
update nation set country_code = 'ID' where n_name = 'INDONESIA';
update nation set country_code = 'IR' where n_name = 'IRAN';
update nation set country_code = 'IQ' where n_name = 'IRAQ';
update nation set country_code = 'JP' where n_name = 'JAPAN';
update nation set country_code = 'JO' where n_name = 'JORDAN';
update nation set country_code = 'KE' where n_name = 'KENYA';
update nation set country_code = 'MA' where n_name = 'MOROCCO';
update nation set country_code = 'MZ' where n_name = 'MOZAMBIQUE';
update nation set country_code = 'PE' where n_name = 'PERU';
update nation set country_code = 'CN' where n_name = 'CHINA';
update nation set country_code = 'RO' where n_name = 'ROMANIA';
update nation set country_code = 'SA' where n_name = 'SAUDI ARABIA';
update nation set country_code = 'VN' where n_name = 'VIETNAM';
update nation set country_code = 'RU' where n_name = 'RUSSIA';
update nation set country_code = 'GB' where n_name = 'UNITED KINGDOM';
update nation set country_code = 'US' where n_name = 'UNITED STATES';
commit;

