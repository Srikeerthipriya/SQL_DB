CREATE TABLE health_insurance (
    id SERIAL PRIMARY KEY,   -- auto-incrementing ID in PostgreSQL
    age INT NOT NULL CHECK (age > 0),
    gender VARCHAR(10) NOT NULL CHECK (gender IN ('male','female')),
    bmi DECIMAL(5,2) NOT NULL CHECK (bmi > 0),
    children INT NOT NULL CHECK (children >= 0),
    smoker VARCHAR(3) NOT NULL CHECK (smoker IN ('yes','no')),
    region VARCHAR(20) NOT NULL CHECK (region IN ('southeast','northwest','southwest','northeast')),
    medical_h VARCHAR(50),
    family_me VARCHAR(50),
    exercise_f VARCHAR(20) CHECK (exercise_f IN ('Never','Rarely','Occasional','Regular')),
    occupation VARCHAR(30),
    coverage_l VARCHAR(20) NOT NULL CHECK (coverage_l IN ('Basic','Standard','Premium')),
    charges DECIMAL(10,2) NOT NULL CHECK (charges >= 0)
);

select * from health_insurance
