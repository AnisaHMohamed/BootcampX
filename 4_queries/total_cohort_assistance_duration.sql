SELECT cohorts.name AS name,SUM(assistance_requests.completed_at - assistance_requests.started_at) AS total_duration
FROM assistance_requests 
JOIN students ON student_id = students.id 
JOIN cohorts ON cohort_id = cohorts.id
GROUP BY cohorts.name
ORDER BY total_duration

-- Total Cohort Assistance Duration
-- Select the cohort's name and the total duration the assistance requests.
-- Order by total_duration.
-- Look at the ERD to see how to join the tables.