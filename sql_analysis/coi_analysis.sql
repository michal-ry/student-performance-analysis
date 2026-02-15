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

-- ==========================
-- Creating COI View
-- ==========================

-- Creating View
DROP VIEW IF EXISTS coi;

CREATE VIEW coi AS
SELECT
guardian,
nursery,
famsup,
paid,
activities,
internet,
G3 AS g3
FROM student;

-- Total numbers of rows in coi view
SELECT
COUNT(*) AS coi_total_rows
FROM coi;

-- Preview records
SELECT
*
FROM coi
LIMIT 5;

-- ==========================
-- G3 Descriptive Statistics
-- ==========================

SELECT
COUNT(*) AS n_students,
MIN(g3) AS lowest_grade,
MAX(g3) AS highest_grade,
ROUND(AVG(g3), 2) AS average_grade
FROM coi;