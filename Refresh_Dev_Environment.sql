--Drop dev environment 
use devops_demodb_development.new_dataset;

drop database devops_demodb_development;

--Recreate Dev based on the new version of prod 

create database devops_demo_db_development clone devops_demodb;

