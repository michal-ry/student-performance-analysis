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