--Clone database for development purposes
create or replace database devops_demodb_DEVELOPMENT clone devops_demodb;

--Switch to newly created DEVELOPMENT database
use devops_demodb_DEVELOPMENT.new_dataset;

use warehouse se_wh;

--********Begin Development code section************

show tables;

create table bla clone table nation;
