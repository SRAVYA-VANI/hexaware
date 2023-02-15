create database assign
use assign

create table loan_details(
customer_number int, --foreign key references customer_master(customer_number),
branch_id int,
loan_amount bigint
constraint f_customer_number foreign key(customer_number) references customer_master(customer_number))
go

drop table loan_details

--drop table customer_master

--select * from loan_details

--drop  table account_master

create table account_master(
account_number varchar(70) primary key,
customer_number int,
branch_id int,
opening_balance int,
account_opening_date date,
account_type varchar(50),
account_status varchar(60),
constraint foreign_branchid foreign key(branch_id) references branched_master(branch_id)
)
go

select * from account_master

drop table transaction_details

create table transaction_details(
transaction_number int primary key,
account_number varchar(70),
date_of_transaction date,
medium_of_transaction varchar(50),
transaction_type varchar(60),
transaction_amount int
constraint f_account_number foreign key(account_number) references account_master(account_number)
)
go


drop table customer_master 

create table customer_master(
customer_number int primary key,
firstname varchar(50),
middlename varchar(50),
lastname varchar(50),
customer_city varchar(50),
customer_contact_no bigint,
occupation varchar(50),
customer_dob date,
--constraint f_customer_number foreign key(customer_number) references account_master(customer_number))

)
go


--drop table branched_master

create table branched_master(
branch_id int primary key,
branch_name varchar(50),
branch_city varchar(60)
)
go

select * from branched_master

ALTER TABLE account_master 
ADD CONSTRAINT fk_customer_number
FOREIGN KEY (customer_number)
REFERENCES customer_master(customer_number)