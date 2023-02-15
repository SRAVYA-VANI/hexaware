create database assignment3
use assignment3
declare @str1 varchar(50)
set @str1 = 'welcome to sql server'

print @str1

create table emplo(
name varchar(50),
salary bigint,
gender varchar(50),
empid int primary key
)
insert into emplo values ('tommy',30000,'male',106),
('jerry',60000,'male',102),
('dora',70000,'female',103),
('hydi',80000,'female',104),
('bheem',40000,'male',105)

select * from emplo

declare @empid int

create proc emplproce (@empid int)
as
begin
select name,salary,gender from emplo
where @empid<=empid
order by empid
end

emplproce 101
emplproce 102

drop proc emplproce

declare @num1 int
declare @num2 int
declare @num3 int
declare @res int
set @res = @num1+@num2+@num3
if @num1 is null and @num2 is null and @num3 is null
	print 'default'
	else
	print @res
go

