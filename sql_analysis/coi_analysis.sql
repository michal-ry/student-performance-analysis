-- ==========================
-- Initial Dataset Validation
-- ==========================

-- Total number of rows
SELECT COUNT(*) AS total_rows
FROM student;

-- Preview first 5 records
SELECT *
FROM student
LIMIT 5;