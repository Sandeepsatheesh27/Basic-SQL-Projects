CREATE DATABASE student_course_project;
USE student_course_project;

CREATE TABLE students (
    student_id INT AUTO_INCREMENT PRIMARY KEY,
    student_name VARCHAR(100),
    department VARCHAR(100),
    email VARCHAR(100)
);

CREATE TABLE courses (
    course_id INT AUTO_INCREMENT PRIMARY KEY,
    course_name VARCHAR(100),
    instructor VARCHAR(100)
);

CREATE TABLE enrollment (
    enroll_id INT AUTO_INCREMENT PRIMARY KEY,
    student_id INT,
    course_id INT,
    enrollment_date DATE,
    FOREIGN KEY (student_id) REFERENCES students(student_id),
    FOREIGN KEY (course_id) REFERENCES courses(course_id)
);

INSERT INTO students (student_name, department, email) VALUES
('Sandeep S S', 'Computer Science', 'sandeepsatheesh278@gmail.com'),
('Rahul Kumar', 'Electronics', 'rahul@example.com'),
('Priya Sharma', 'Mechanical', 'priya@example.com');

INSERT INTO courses (course_name, instructor) VALUES
('Database Systems', 'Dr. Arjun'),
('Cloud Computing', 'Prof. Meera'),
('Python Programming', 'Dr. Varun');

INSERT INTO enrollment (student_id, course_id, enrollment_date) VALUES
(1, 1, '2025-01-10'),
(1, 2, '2025-01-11'),
(2, 1, '2025-01-15'),
(3, 3, '2025-01-20');
