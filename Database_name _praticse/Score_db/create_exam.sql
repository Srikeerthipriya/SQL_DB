-- Exam table with student detail and their marks
CREATE TABLE exam (
    id          INT,
    fname       VARCHAR(80),
    class       VARCHAR(10),
    section     CHAR(1),
    tamil       SMALLINT,   
    english     SMALLINT,  
    maths       SMALLINT,  
    physics     SMALLINT,  
    chemistry   SMALLINT,  
    biology     SMALLINT
);


select * from exam;

