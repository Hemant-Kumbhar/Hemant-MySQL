create database Disha;
use Disha;
create table employee(
id int not null,
name varchar(20),
salary varchar(20),
primary key (id)
);

insert into employee values(1,'Troy',12000);
insert into employee values(2,'Emma',15000);
insert into employee values(3,'Roy',20000);

select * from employee;

ALTER TABLE employee ADD PRIMARY KEY (ID);

ALTER TABLE employee DROP PRIMARY KEY;

