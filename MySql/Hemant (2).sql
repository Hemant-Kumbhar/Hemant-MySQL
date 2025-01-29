create database Disha1;
use Disha1;
create table student(
id int not null,
name varchar(30),
course varchar(30),
primary key (id)
);
select * from student;

insert into student values(1,'Jay','CS');
insert into student values(2,'Maya','Bio');
insert into student values(3,'Veer','Electric');
select * from student;

create table student1(
id int not null,
name varchar(30),
course varchar(30),
primary key (id),
foreign key (id) references student(id)
);
select * from student1;

insert into student1 values(1,'Jay','CS');
insert into student1 values(2,'Maya','Bio');
insert into student1 values(3,'Veer','Electric');
select * from student1;



