-- CREATE TABLE insurance_data (
--     id INT AUTO_INCREMENT PRIMARY KEY,
--     age INT NOT NULL,
--     gender VARCHAR(10),
--     bmi DECIMAL(5,2),
--     children INT,
--     smoker VARCHAR(3),
--     region VARCHAR(20),
--     medical_history VARCHAR(50),
--     family_medical_history VARCHAR(50),
--     exercise_frequency VARCHAR(20),
--     occupation VARCHAR(30),
--     coverage VARCHAR(20),
--     charges DECIMAL(10,2)
-- );

CREATE TABLE insurance_data (
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    age INT NOT NULL,
    gender VARCHAR(10),
    bmi DECIMAL(5,2),
    children INT,
    smoker VARCHAR(3),
    region VARCHAR(20),
    medical_history VARCHAR(50),
    family_medical_history VARCHAR(50),
    exercise_frequency VARCHAR(20),
    occupation VARCHAR(30),
    coverage VARCHAR(20),
    charges DECIMAL(10,2)
);

select * from insurance_data

