CREATE DATABASE library;

USE library;

CREATE TABLE bookss (
    book_id INT PRIMARY KEY AUTO_INCREMENT,
    title VARCHAR(100) NOT NULL,
    author VARCHAR(50) NOT NULL,
    category VARCHAR(30),
    price DECIMAL(8,2),
    quantity INT,
    published_year INT
);

INSERT INTO bookss
(book_id, title, author, category, price, quantity, published_year)
VALUES
(1, 'Java Basics', 'James Gosling', 'Programming', 500, 12, 2022),
(2, 'Python Guide', 'Guido van Rossum', 'Programming', 600, 8, 2023),
(3, 'Atomic Habits', 'James Clear', 'Self-Help', 450, 15, 2019),
(4, 'Rich Dad Poor Dad', 'Robert Kiyosaki', 'Self-Help', 350, 20, 2018),
(5, 'The Alchemist', 'Paulo Coelho', 'Fiction', 300, 25, 2021),
(6, 'Harry Potter', 'J.K. Rowling', 'Fiction', 700, 5, 2020),
(7, 'SQL Mastery', 'John Smith', 'Programming', 800, 10, 2024),
(8, 'Deep Work', 'Cal Newport', 'Self-Help', 550, 7, 2022),
(9, 'Ikigai', 'Hector Garcia', 'Self-Help', 400, 18, 2021),
(10, 'Wings of Fire', 'A.P.J. Abdul Kalam', 'Biography', 250, 30, 2015);

SELECT * FROM bookss;

SELECT count(*) FROM bookss;

SELECT count(quantity) FROM bookss;

SELECT avg(price) AS average_price FROM bookss;

SELECT max(price)  AS Highest_price FROM bookss;

SELECT min(price)  AS Lowest_price FROM bookss;

SELECT count(*) FROM bookss
WHERE category='programming';

SELECT count(quantity) FROM bookss
WHERE category='Fiction';

SELECT avg(price) FROM bookss
WHERE published_year>2020;

SELECT max(price) FROM bookss
WHERE category= 'Self-Help';

SELECT min(price) FROM bookss
WHERE quantity>10;
