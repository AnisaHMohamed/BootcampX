SELECT cohorts.name, COUNT(assignment_submissions.*) AS total_submissions 
FROM cohorts 
JOIN students ON cohorts.id = students.cohort_id 
JOIN assignment_submissions ON students.id = assignment_submissions.student_id
GROUP BY cohorts.name
ORDER BY total_submissions DESC


-- Get the total number of assignment submissions for each cohort.

-- Select the cohort name and total submissions.
-- Order the results from greatest to least submissions.
-- Expected Result:

-- GROUP BY cohorts.name
-- HAVING COUNT(students.*) >=18
-- ORDER BY student_count ASC
