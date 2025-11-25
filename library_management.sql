CREATE DATABASE library_management;
USE library_management;

CREATE TABLE books (
    book_id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(150),
    author VARCHAR(100),
    genre VARCHAR(100)
);

CREATE TABLE members (
    member_id INT AUTO_INCREMENT PRIMARY KEY,
    member_name VARCHAR(100),
    email VARCHAR(100)
);

CREATE TABLE borrow (
    borrow_id INT AUTO_INCREMENT PRIMARY KEY,
    book_id INT,
    member_id INT,
    borrow_date DATE,
    FOREIGN KEY (book_id) REFERENCES books(book_id),
    FOREIGN KEY (member_id) REFERENCES members(member_id)
);

INSERT INTO books (title, author, genre) VALUES
('Clean Code', 'Robert C. Martin', 'Programming'),
('The Pragmatic Programmer', 'Andrew Hunt', 'Programming'),
('Harry Potter', 'J.K. Rowling', 'Fantasy');

INSERT INTO members (member_name, email) VALUES
('Sandeep S S', 'sandeepsatheesh278@gmail.com'),
('Arun Kumar', 'arun@example.com'),
('Deepika Rao', 'deepika@example.com');

INSERT INTO borrow (book_id, member_id, borrow_date) VALUES
(1, 1, '2025-01-11'),
(3, 2, '2025-01-12'),
(2, 3, '2025-01-13');
