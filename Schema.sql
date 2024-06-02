CREATE DATABASE LibraryManagement;
USE LibraryManagement;


CREATE TABLE books (
    book_id int(11) PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    author VARCHAR(255) NOT NULL,
    genre VARCHAR(100),
    publication_year YEAR NOT NULL,
    copies_available int(11) DEFAULT '0'
);

CREATE TABLE members (
    member_id int(11) PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL,
    phone_number VARCHAR(20),
    membership_date DATE NULL DEFAULT NULL
);

CREATE TABLE Borrowing (
    borrow_id int(11) PRIMARY KEY,
    book_id int(11) NOT NULL,
    member_id int(11) NOT NULL,
    borrow_date DATE NOT NULL,
    return_date DATE,
    FOREIGN KEY (book_id) REFERENCES Books(book_id) ON DELETE CASCADE,
    FOREIGN KEY (member_id) REFERENCES Members(member_id) ON DELETE CASCADE
);


--indexing
CREATE INDEX idx_books_title ON Books(title);
CREATE INDEX idx_members_email ON Members(name,email);
CREATE INDEX idx_borrowing_dates ON Borrowing(borrow_date, return_date);
