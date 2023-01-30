create database bank
use bank

create table customer_master(
customer_number int primary key,
firstname varchar(20),
middlename varchar(20),
lastname varchar(20),
customer_city varchar(50),
customer_contact_no bigint,
occupation varchar(20),
customer_date_of_birth date
)

select * from customer_master

insert into customer_master values(100001,'ramesh','chandra','sharma','delhi',9543124636,'service','1976-12-06')
--first query (Display No.of customers belongs Each City )

select count(customer_number) as 'customers from delhi' from customer_master where  customer_city = 'delhi'
select count(customer_number) as 'customers from mumbai' from customer_master where  customer_city = 'mumbai'
select count(customer_number) as 'customers from kolkata' from customer_master where  customer_city = 'kolkata'
select count(customer_number) as 'customers from chennai' from customer_master where  customer_city = 'chennai'

--second query(Display all city Names from Customer tables without any duplicate value )

select distinct (customer_city) from customer_master 

--third query (Display No.of customers from different Occupation )

select count(customer_number) as 'employees in service' from customer_master where occupation='service'
select count(customer_number) as 'employees in house wife' from customer_master where occupation='house wife'
select count(customer_number) as 'no of students' from customer_master where occupation='student'

--fourth query (Display Customer Details with the Ascending Order based on FirstName )

select * from customer_master order by firstname

-- fourth query (Display the dat in descending order based on Occupation and the display the FirstName in Ascending of each Occupation )

select occupation,customer_date_of_birth from customer_master order by customer_date_of_birth desc

select firstname,occupation from customer_master order by firstname

-- fifth query(Display Cusomters who has middlename as null )

select * from customer_master where middlename is null