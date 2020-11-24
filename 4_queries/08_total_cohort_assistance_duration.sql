SELECT cohorts.name AS cohort,
  SUM(ar.completed_at - ar.started_at) AS total_duration
FROM cohorts
JOIN students 
  ON cohorts.id = cohort_id
JOIN assistance_requests AS ar 
  ON students.id = student_id
GROUP BY cohorts.name
ORDER BY total_duration;