ALTER TABLE job_applied
RENAME COLUMN contact TO contact_name;

ALTER TABLE job_applied
DROP COLUMN contact_name;

SELECT * FROM job_applied;