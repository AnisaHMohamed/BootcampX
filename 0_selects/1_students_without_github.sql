SELECT id, name, email, cohort_id
FROM studentsPSQ
WHERE github IS NULL
ORDER BY cohort_id