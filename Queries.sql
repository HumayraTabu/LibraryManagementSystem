--members book list
SELECT BR.borrow_id,BR.book_id,BR.member_id,B.title, B.author
FROM Borrowing BR
JOIN Books B ON BR.book_id = B.book_id
WHERE BR.member_id = 114;


--which book never borrowed

SELECT A.book_id, A.title, A.author
FROM Books A
LEFT JOIN Borrowing BR ON A.book_id = BR.book_id
WHERE BR.book_id IS NULL;



-- max borrow book
WITH max_borrow_count AS (
    SELECT COUNT(BR.book_id) AS borrow_count
    FROM Borrowing BR
    GROUP BY BR.book_id
    ORDER BY borrow_count DESC
    LIMIT 1
)
SELECT B.book_id,B.title, B.author, COUNT(BR.book_id) AS borrow_count
FROM Borrowing BR
JOIN Books B ON BR.book_id = B.book_id
GROUP BY B.book_id
HAVING COUNT(BR.book_id) = (SELECT borrow_count FROM max_borrow_count);


--monthly report

SET @specific_month = '2009-05';
SELECT *, DATE_FORMAT(borrow_date, '%Y-%m') AS month
FROM Borrowing
WHERE  DATE_FORMAT(borrow_date, '%Y-%m') = @specific_month
ORDER BY month DESC;