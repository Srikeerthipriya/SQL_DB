select name from students;

select name,id from students

alter table students
rename column name to full_name;

select * from students; -- time consuming is more

alter table students
rename column full_name to name;

--- limit

select * from students limit 10;


