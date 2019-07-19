--Clone the original prod database for QA purposes
create database devops_demodb_QA clone devops_demodb;

--Swtich to new QA database 
use devops_demodb_QA.new_dataset;

--********Begin QA Code Promotion Section ************

--1. Clone "customer" table in dev to promote to QA
create or replace table customer clone devops_demodb_development.new_dataset.customer;

--2. Clone "nation" table in dev complete with any changes commited previously
create or replace table nation clone devops_demodb_development.new_dataset.customer;

