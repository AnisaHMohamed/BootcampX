SELECT day, COUNT(assignments.*) AS assignment_count
FROM assignments


GROUP BY assignments.day
 HAVING COUNT(assignments.*) >= 10
ORDER BY day

-- only return rows where total assignments is greater than or equal to 10