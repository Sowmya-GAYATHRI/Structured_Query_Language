USE college;USE college;

INSERT INTO students
(name, age, course)
VALUES
('Arvind', 22, 'Computer Science'),
('Karthik', 21, 'Information Technology'),
('Sneha', 20, 'Computer Science'),
('Priya', 23, 'Data Science'),
('Vikram', 24, 'Mechanical Engineering');
SELECT * FROM students;
UPDATE students
SET age = 23
WHERE name = 'Arvind';
SELECT * FROM students;
DELETE FROM students
WHERE name = 'Arvind';
SELECT * FROM students;
DELETE FROM students
WHERE id >= 14;
SELECT * FROM students;s