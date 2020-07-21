1. orginial database: students; 
    - tables that exists in the database:
        - innodb
        - sys
        - tc1-abigail-swigert-
        - tc1-mathhew-catiglione
        - tc1_norita_sieffert
        - tc1-sabitha-radhakrishnan
        - tc1-Victor-Betts
        - tc1_Vimala_Murthy 

2. CREATE DATABASE tc1_jessica_ulysse;

3 & 4.  CREATE TABLE tekcampers(id int AUTO_INCREMENT, 
    first_name VARCHAR(45), last_name VARCHAR(45), 
    gender VARCHAR(45), education VARCHAR(50), PRIMARY KEY (id));
    INSERT INTO tekcampers
    SELECT * FROM students.tekcamp01; 

5.   INSERT INTO tekcampers(first_name, last_name, education, gender) VALUES ("Aaron",  "White", null, "M");
    INSERT INTO tekcampers(first_name, last_name, education, gender) VALUES ("Cody", "Clark", "Some College" ,"M");
    VALUES ("Devon", "Brewster", null ,"M");
    INSERT INTO tekcampers(first_name, last_name, education, gender) VALUES ("Gotham", "Katta", "Bachelor’s Degree", "M");
    INSERT INTO tekcampers(first_name, last_name, education, gender) VALUES ("John", "Bozarov", "Bachelors degree", "M");
    INSERT INTO tekcampers(first_name, last_name, education, gender) VALUES ("John", "Kol", null, "M");
    INSERT INTO tekcampers(first_name, last_name, education, gender) VALUES ("Justin", "Cheng", "Some College", "M");
    INSERT INTO tekcampers(first_name, last_name, education, gender) VALUES ("Kevin", "Keesee", "High School Diploma", "M");
    INSERT INTO tekcampers(first_name, last_name, education, gender) VALUES ("Monica", "Howard", null, "F");
    INSERT INTO tekcampers(first_name, last_name, education, gender) VALUES ("Tyler", "Clements", null, "M");
    INSERT INTO tekcampers(first_name, last_name, education, gender) VALUES ("Vimala", "Murthy", "Masters Degree", "F"); 

6. DELETE FROM tekcampers
WHERE first_name = 'Desaree'; 
DELETE FROM tekcampers
WHERE first_name = "Jake";
DELETE FROM tekcampers
WHERE first_name = 'Rosa'; 

7. UPDATE tekcampers 
SET education = "Bachelors Degree"
WHERE id IN (1, 4, 5, 6, 11, 16, 18, 32, 33);
UPDATE tekcampers 
SET education = "High School Diploma"
WHERE id IN (14, 36, 25);
UPDATE tekcampers 
SET education = "Some College"
WHERE id IN (19, 24, 12, 7, 29, 15, 35);
UPDATE tekcampers 
SET education = "Associates Degress"
WHERE id IN (8, 17);
UPDATE tekcampers 
SET education = "Masters Degree"
WHERE id IN (3, 39, 21);
UPDATE tekcampers 
SET education = "Doctorate"
WHERE id IN (10);
UPDATE tekcampers 
SET education = null
WHERE id IN (23, 27, 28, 30, 31, 34, 37, 38, 22, 2, 13); 

8. 
i. SELECT first_name
    FROM tekcampers
    WHERE CHAR_LENGTH(last_name) > 7;
ii. SELECT *
    FROM tekcampers
    ORDER BY first_name;
iii. SELECT *
    FROM tekcampers
    ORDER BY last_name;
iv. SELECT *
    FROM tekcampers
    WHERE gender = "M";
 v. SELECT *
    FROM tekcampers
    WHERE gender = "F";
vi. SELECT *
    FROM tekcampers
    WHERE education = "Masters Degree";
vii. SELECT *
     FROM tekcampers
     WHERE education = "Bachelors Degree";
viii. SELECT *
      FROM tekcampers
      WHERE education = "Associate Degree";
ix. SELECT * 
    FROM tekcampers
    WHERE education NOT LIKE "Bachelors Degree" 
    AND education NOT LIKE "Masters Degree" 
    AND education NOT LIKE "Associate Degree" 
    AND education NOT LIKE "Doctorate"; 

9.  CREATE TABLE ta_ta_dylan (first_name varchar(25), 
    last_name varchar(25), gender varchar(2));
    INSERT INTO ta_ta_dylan (first_name, last_name, gender)
    VALUES ("George", "Torres", "M"), 
    ("John", "Kol", "M"),
    ("Katherine", "Kim", "F"),
    ("Nancy", "Golden", "F"),
    ("Kevin", "Ibanez", "M"),
    ("Matthew", "Castiglone", "M"),
    ("Vani", "Muppuru", "F"),
    ("Norita", "Sieffert", "F"),
    ("Sabitha", "Radhakrishnan", "F"),
    ("Victor", "Betts", "M"),
    ("Vimala", "Murthy", "F"); 

10. CREATE TABLE hobbies (first_name varchar(25),  team varchar(25), hobby varchar(25));
    
    INSERT INTO hobbies (first_name, team, hobby)
    VALUES ("George", "tc1-dylan", "Video Games"), 
    ("John", "tc1-dylan", null),
    ("Katherine", "tc1-dylan", "Writing"),
    ("Nancy", "tc1-dylan", null),
    ("Kevin", "tc1-dylan", "Working out"),
    ("Matthew", "tc1-dylan", "Video Games"),
    ("Vani", "tc1-dylan", null),
    ("Norita", "tc1-dylan", "Motorcycle Riding"),
    ("Sabitha", "tc1-dylan", "Doing Engineering Projects with Kids"),
    ("Victor", "tc1-dylan", "Reading"),
    ("Vimala", "tc1-dylan", "Gardening");

 11.SELECT hobbies.first_name, hobbies.team, hobbies.hobby, tekcampers.gender
    FROM hobbies
    INNER JOIN tekcampers
    ON tekcampers.first_name = hobbies.first_name;

12. ALTER TABLE tekcampers ADD bootcamp varchar(25) AFTER gender;

13. ALTER TABLE ta_ta_dylan ADD bootcamp varchar(25) AFTER gender;







