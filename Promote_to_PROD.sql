--Use production database instance to promot changes from lower environments
use devops_demodb.new_dataset;

--********Begin Production Promotion Section ************

--1. Clone "customer" table from QA to promote to prod
create or replace table customer clone devops_demodb_qa.new_dataset.customer;

--2. Clone "nation" table from QA to promote to prod
create or replace table nation clone devops_demodb_qa.new_dataset.customer;