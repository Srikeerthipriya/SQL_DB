--create database School;

create table students
(id int, 
name varchar(50),
city varchar(50),
class int,
section varchar(1),
school_transport varchar(5),
ph_no int);

--drop table students -- it will drop the table with structure

alter table students 
add column last_n

create table score
(id int,
name varchar(50),
english int,
Tamil int,
Maths int,
Science int,
Social int,
Computer int);

select * from students

insert into score (id,name,English,Tamil,Maths,Science,Social,Computer) values
(1,'keerthi',70,60,97,95,80,85),
(2,'shri',90,80,90,95,90,95),
(3,'subbu',80,80,77,95,88,95),
(4,'nikshi',70,80,90,99,70,100);

select * from score

-- drop table staffs 

create table staffs
(name varchar(50),
subject varchar(50),
education varchar(50),
salary float,
experience float
);

insert into staffs (name,subject,education,salary,experience) values
('Virddhi',('English','Computer'),'M.tech',120000,5),
('Maragatha selvi','Tamil','M.Edu',200000,28),
('Sriranjini',('Maths','Computer'),'B.E',120000,8),
('Gautham','Science','B.E',80000,5),
('Subha','Social','M.Edu',150000,18),
('Maha','Maths','B.Edu',300000,30);

select * from staffs

drop table holidays

create table holidays
(day varchar(50),
exam_leave varchar(100),
festival_holidays varchar(100),
Winter_holidays varchar(100),
summer_holidays varchar(100)
);

alter table holidays
rename column exam_leave to Study_holidays

insert into holidays (day,Study_holidays,festival_holidays,winter_holidays,summer_holidays)values
('Sat & Sun','before exams','festival leaves',
'Christmas holidays','April end & May');

select * from holidays
