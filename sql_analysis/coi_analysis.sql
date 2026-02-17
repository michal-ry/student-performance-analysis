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

-- ===============================
-- Data Quality Checks: Duplicates
-- ===============================

WITH total_rows AS(
SELECT COUNT(*) AS total_rows_sum
FROM student
),
unique_rows AS(
SELECT COUNT(*) AS unique_rows_sum
FROM (
SELECT DISTINCT *
FROM student
) AS distinct_rows
)
SELECT
t.total_rows_sum,
u.unique_rows_sum,
(t.total_rows_sum - u.unique_rows_sum) AS duplicate_rows
FROM total_rows t, unique_rows u;

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

-- ================================
-- Data Quality Checks: NULL counts
-- ================================

SELECT
SUM(CASE
	WHEN guardian IS NULL THEN 1
	ELSE 0
END
) AS guardian_null_total,
SUM(CASE
	WHEN nursery IS NULL THEN 1
	ELSE 0
END
) AS nursery_null_total,
SUM(CASE
	WHEN famsup IS NULL THEN 1
	ELSE 0
END
) AS famsup_null_total,
SUM(CASE
	WHEN paid IS NULL THEN 1
	ELSE 0
END
) AS paid_null_total,
SUM(CASE
	WHEN activities IS NULL THEN 1
	ELSE 0
END
) AS activities_null_total,
SUM(CASE
	WHEN internet IS NULL THEN 1
	ELSE 0
END
) AS internet_null_total,
SUM(CASE
	WHEN g3 IS NULL THEN 1
	ELSE 0
END
) AS g3_null_total
FROM coi

-- ==========================
-- G3 Descriptive Statistics
-- ==========================

SELECT
COUNT(*) AS n_students,
MIN(g3) AS lowest_grade,
MAX(g3) AS highest_grade,
ROUND(AVG(g3), 2) AS average_grade
FROM coi;

-- ==========================
-- COI Analysis
-- ==========================

-- Nursery

SELECT
nursery,
COUNT(*) AS nr_of_students,
ROUND(AVG(g3), 2) AS avg_g3
FROM coi
GROUP BY nursery
ORDER BY nursery;