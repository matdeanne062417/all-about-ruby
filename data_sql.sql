#1
CREATE TABLE students (id integer, first_name VARCHAR(50), middle_name VARCHAR(50), last_name VARCHAR(50), age integer, location VARCHAR(50))

#2
INSERT INTO students (id, first_name, middle_name, last_name, age, location)
VALUES(1, 'Juan', 'blank', 'Cruz', 18, 'Manila');
INSERT INTO students (id, first_name, middle_name, last_name, age, location)
VALUES(2, 'John', 'blank', 'Young', 20, 'Manila');
INSERT INTO students (id, first_name, middle_name, last_name, age, location)
VALUES(3, 'Victor', 'blank', 'Rivera', 21, 'Manila');
INSERT INTO students (id, first_name, middle_name, last_name, age, location)
VALUES(4, 'Adrian', 'blank', 'Co', 19, 'Laguna');
INSERT INTO students (id, first_name, middle_name, last_name, age, location)
VALUES(5, 'Pau', 'blank', 'Riosa', 22, 'Marikina');
INSERT INTO students (id, first_name, middle_name, last_name, age, location)
VALUES(6, 'Piolo', 'blank', 'Pascual', 25, 'Manila');

#3
UPDATE students 
SET first_name = 'Ana', middle_name = 'Cui', last_name = 'Cajocson', age = 25, location = 'Bulacan'
WHERE id = 1

#4
DELETE FROM students WHERE id = 6