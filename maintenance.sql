
--maintenence
-- Update statistics
ANALYZE TABLE Books;
ANALYZE TABLE Members;
ANALYZE TABLE Borrowing;

-- Rebuild indexes (MySQL)
OPTIMIZE TABLE Books;
OPTIMIZE TABLE Members;
OPTIMIZE TABLE Borrowing;
