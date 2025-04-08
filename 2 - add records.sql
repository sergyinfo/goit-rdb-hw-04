-- Тестові дані

-- Authors
INSERT INTO authors (author_name) VALUES
('Іван Франко'),
('Ліна Костенко');

-- Genres
INSERT INTO genres (genre_name) VALUES
('Поезія'),
('Роман');

-- Books
INSERT INTO books (title, publication_year, author_id, genre_id) VALUES
('Захар Беркут', 1983, 1, 2),
('Маруся Чурай', 1979, 2, 1);

-- Users
INSERT INTO users (username, email) VALUES
('vasya', 'vasya@example.com'),
('petro', 'petro@example.com');

-- Borrowed books
INSERT INTO borrowed_books (book_id, user_id, borrow_date, return_date) VALUES
(1, 1, '2024-04-01', '2024-04-10'),
(2, 2, '2024-04-03', NULL);