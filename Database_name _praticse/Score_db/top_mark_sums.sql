-- - Top 3 from school 

select * from exam;

select id,fname,class,section,
(tamil+english+maths+physics+chemistry+biology) as total_marks
from exam 
order by total_marks desc
limit 3;
-- 3 student id (49,29,39)
--------------------------------------------------------------------------------------

-- - Top 3 / Section

-- A section -- id 49,29,39
select id,fname,class,section,
(tamil+english+maths+physics+chemistry+biology) as total_marks
from exam 
where section = 'A'
order by total_marks desc
limit 3;

-- B section -- id 24,14,44
select id,fname,class,section,
(tamil+english+maths+physics+chemistry+biology) as total_marks
from exam 
where section = 'B'
order by total_marks desc
limit 3;

-- C section -- id 41,11,21
select id,fname,class,section,
(tamil+english+maths+physics+chemistry+biology) as total_marks
from exam 
where section = 'C'
order by total_marks desc
limit 3;
---------------------------------------------------------------------------------------------
-- - Top 3 in Math / Section

-- top 3 maths in all section -- 29,49,19
select id,fname,class,section,maths
from exam
order by maths desc
limit 3;


-- top 3 maths in section A -- 29,49,19
select id,fname,class,section,maths
from exam
where section = 'A'
order by maths desc
limit 3;


-- top 3 maths in section B -- 47,27,13
select id,fname,class,section,maths
from exam
where section = 'B'
order by maths desc
limit 3;

-- top 3 maths in section C -- 41,21,11
select id,fname,class,section,maths
from exam
where section = 'C'
order by maths desc
limit 3;

-------------------------------------------------------------------
-- - Top 3 in physics / Section

-- top 3 physics in all section -- 29,49,19
select id,fname,class,section,physics
from exam
order by physics desc
limit 3;


-- top 3 physics in section A -- 29,49,19
select id,fname,class,section,physics
from exam
where section = 'A'
order by physics desc
limit 3;


-- top 3 physics in section B -- 3,47,27
select id,fname,class,section,physics
from exam
where section = 'B'
order by physics desc
limit 3;

-- top 3 physics in section C -- 41,21,11
select id,fname,class,section,physics
from exam
where section = 'C'
order by physics desc
limit 3;
-----------------------------------------------------------------------------------
-- - Top 3 in Chemistry / Section

-- top 3 Chemistry in all section -- 49,29,19
select id,fname,class,section,Chemistry
from exam
order by Chemistry desc
limit 3;


-- top 3 physics in section A -- 49,29,19
select id,fname,class,section,Chemistry
from exam
where section = 'A'
order by Chemistry desc
limit 3;


-- top 3 physics in section B -- 47,27,3
select id,fname,class,section,Chemistry
from exam
where section = 'B'
order by Chemistry desc
limit 3;

-- top 3 physics in section C -- 7,41,21
select id,fname,class,section,Chemistry
from exam
where section = 'C'
order by Chemistry desc
limit 3;
---------------------------------------------------------------------------------
-- - passed in all exams score > 35 
-- 46 students passed in all the subject 
select * from exam where tamil > 35 and english >35 and 
maths >35 and physics >35 and chemistry >35  and biology >35