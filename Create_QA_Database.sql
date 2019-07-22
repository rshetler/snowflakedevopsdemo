--Clone the original prod database for QA purposes
create database devops_demodb_QA clone devops_demodb_DEVELOPMENT;

--Swtich to new QA database 
use devops_demodb_QA.new_dataset;

--********Begin QA Code Promotion Section ************
--Ensure new tables are represented here to be cloned from Dev during promotion 




