-- Create table stud_score(
-- id int unique ,
-- name varchar not null,
-- class varchar(10),
-- section varchar(10),
-- tamil int,
-- english int,
-- maths int,
-- physics int,
-- chemistry int,
-- biology int
-- );

select * from stud_score;

-- drop table stud_score;

Create table stud_score(
id int generated always as identity ,
name varchar not null,
class varchar(10),
section varchar(10),
tamil int,
english int,
maths int,
physics int,
chemistry int,
biology int
);

insert 