SELECT AVG (total_duration) as average_total_duration
FROM (
  SELECT SUM(ar.completed_at - ar.started_at) AS total_duration
  FROM cohorts
  JOIN students 
    ON cohorts.id = cohort_id
  JOIN assistance_requests AS ar 
    ON students.id = student_id
  GROUP BY cohorts.name
) AS average_total_duration;